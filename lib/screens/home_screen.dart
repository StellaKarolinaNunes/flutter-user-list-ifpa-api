import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/usuario.dart';
import '../providers/usuario_provider.dart';
import '../widgets/search_field.dart';
import '../widgets/usuario_list.dart';
import '../widgets/loading_widget.dart';
import '../widgets/error_widget.dart';
import '../widgets/no_results_widget.dart';
import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';
import '../constants/app_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _query = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UsuarioProvider>(context, listen: false).carregarUsuarios();
    });
    _searchController.addListener(() {
      setState(() {
        _query = _searchController.text.trim().toLowerCase();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  List<Usuario> _filtrar(List<Usuario> lista) {
    if (_query.isEmpty) return lista;
    return lista.where((user) {
      final ativoStr = user.ativo ? 'sim' : 'não';
      return user.name.toLowerCase().contains(_query) ||
          user.registrationNumber.toLowerCase().contains(_query) ||
          user.sexo.toLowerCase().contains(_query) ||
          ativoStr.contains(_query);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _CustomAppBar(onRefresh: () {
        Provider.of<UsuarioProvider>(context, listen: false).atualizar();
      }),
      body: SafeArea(
        child: Column(
          children: [
            SearchField(controller: _searchController),
            Expanded(
              child: Consumer<UsuarioProvider>(
                builder: (context, provider, child) {
                  if (provider.isLoading) {
                    return const LoadingWidget();
                  }
                  if (provider.error != null) {
                    return CustomErrorWidget(
                      errorMessage: provider.error,
                      onRetry: () => provider.atualizar(),
                    );
                  }
                  final usuariosFiltrados = _filtrar(provider.usuarios);
                  if (usuariosFiltrados.isEmpty) {
                    return const NoResultsWidget();
                  }
                  return UsuarioList(
                    usuarios: usuariosFiltrados,
                    scrollController: _scrollController,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onRefresh;
  const _CustomAppBar({required this.onRefresh});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 4,
      shadowColor: AppColors.primaryAccent.withOpacity(0.08),
      title: const Text(
        'Aplicativo de Listagem',
        style: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 25,
          letterSpacing: 0.3,
          fontFamily: AppFonts.main,
        ),
      ),
      actions: [
        IconButton(
          tooltip: 'Atualizar',
          icon: const Icon(AppIcons.refresh, color: AppColors.primary),
          onPressed: onRefresh,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12, left: 4),
          child: CircleAvatar(
            backgroundColor: AppColors.primary.withOpacity(0.08),
            child:
                const Icon(AppIcons.user, color: AppColors.primary, size: 22),
          ),
        ),
      ],
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

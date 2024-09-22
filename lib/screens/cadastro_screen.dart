import 'package:flutter/material.dart';
import '../components/custom_drawer.dart';
import '../components/text_box.dart';
import '../components/checkbox.dart';
import '../components/slider.dart';
import '../components/switch.dart';

class CadastroScreen extends StatefulWidget {
  const CadastroScreen({super.key});

  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isMale = false, _isFemale = false, _isOther = false;
  bool _emailNotif = false, _phoneNotif = false;
  double _satisfaction = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Formulário de Cadastro",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const CustomDrawer(currentPage: 'Cadastro'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBox(
                label: 'Nome',
                controller: _nameController,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              TextBox(
                label: 'Data de nascimento',
                controller: _dobController,
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 16),
              TextBox(
                label: 'Telefone',
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              TextBox(
                label: 'E-mail',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenderCheckbox(
                    title: 'Masculino',
                    value: _isMale,
                    onChanged: (value) {
                      setState(() {
                        _isMale = value!;
                        _isFemale = false;
                        _isOther = false;
                      });
                    },
                  ),
                  GenderCheckbox(
                    title: 'Feminino',
                    value: _isFemale,
                    onChanged: (value) {
                      setState(() {
                        _isFemale = value!;
                        _isMale = false;
                        _isOther = false;
                      });
                    },
                  ),
                  GenderCheckbox(
                    title: 'Outros',
                    value: _isOther,
                    onChanged: (value) {
                      setState(() {
                        _isOther = value!;
                        _isMale = false;
                        _isFemale = false;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Deseja receber nossas notificações?'),
              const SizedBox(height: 8),
              NotificationSwitch(
                title: 'E-mail',
                value: _emailNotif,
                onChanged: (value) {
                  setState(() {
                    _emailNotif = value;
                  });
                },
              ),
              const SizedBox(height: 8),
              NotificationSwitch(
                title: 'Celular',
                value: _phoneNotif,
                onChanged: (value) {
                  setState(() {
                    _phoneNotif = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              SatisfactionSlider(
                value: _satisfaction,
                onChanged: (value) {
                  setState(() {
                    _satisfaction = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class usuario{
    final String name; //var tipo final só recebe um valor e não é editavel depois
    final String email;
    final String cpf;

    Usuario({
        required this.nome,
        required this.email,
        required this.cpf
    });

    void apresentar(){
        print('Olá, meu nome é $nome, meu email: $email, meu cpf: $cpf');
    }

    void _apresentarPrivado(){
        print('Olá, meu nome é $nome, meu email: $email, meu cpf: $cpf');
    }
}
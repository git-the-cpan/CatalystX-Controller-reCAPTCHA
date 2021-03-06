use inc::Module::Install;

my $module = 'CatalystX::Controller::reCAPTCHA';

my $dist   = $module;
$dist =~ s/::/-/g;
name($dist);

my @path = split '::', $module;
all_from('lib/'. (join '/',@path). '.pm');
requires 'perl'               => '5.8.1';
build_requires 'Catalyst::Runtime';
build_requires 'Test::WWW::Mechanize::Catalyst';
build_requires 'Test::More';
build_requires 'ok';

requires 'Captcha::reCAPTCHA';

WriteAll();

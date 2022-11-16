# Atualizar os pacotes

exec { "apt update":
command => "/usr/bin/apt update"
}

# Instalar o Apache

package { 'apache2':
  ensure => installed,
}

# Criar o servidor do Apache

service { "apache2":
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
  require    => Package[apache2]
}

node default {

  class { 'aptserver':
  }

  aptserver::dist { 'precise':
  }

}

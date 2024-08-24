project('PostureReminder', 'c',
  version : '0.1',
  default_options : ['warning_level=3'])

libnotify = dependency('libnotify')

exe = executable('PostureReminder', 'posturereminder.c',
  install : true,
  dependencies : libnotify)

test('basic', exe)

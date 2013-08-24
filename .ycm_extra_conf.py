flags = [
'-Wall',
'-Wextra',
'-Werror',
'-std=c99',
'-x',
'c'
]

def FlagsForFile( filename ):
  return {
    'flags': flags,
    'do_cache': True
  }

#!/usr/bin/python3

def safe_print_integer(value):
    """
    Prints an integer
        Args:
            value: integer to be printed.
        Returns: True if value has been correctly printed (it means the,
                 value is an integer). Otherwise, returns False.
    """
    try:
        print("{:d}".format(value))
    except (ValueError, TypeError):
        return False
    else:
        return True

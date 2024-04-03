from datetime import datetime, timedelta
import random
import string

def read_names_from_file(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
    names = content.split(',')
    names = [name.strip() for name in names]
    return names


def random_name(mode='customer'):
    customer_names = read_names_from_file(f'toyData/{mode}Name.txt')
    return random.choice(customer_names)
    

def random_datetime(start=1950, end=2000):
    start_date = datetime(start, 1, 1)
    end_date = datetime(end, 12, 31)
    delta = end_date - start_date
    random_days = random.randint(0, delta.days)
    random_datetime = start_date + timedelta(days=random_days)
    return random_datetime


def generate_random_address():
    min_word_length = 4
    max_word_length = 10
    words = ["".join(random.choices(string.ascii_lowercase, k=random.randint(min_word_length, max_word_length))).capitalize() for _ in range(3)]
    address = ' '.join(words)
    
    return address


def generate_random_gender():
    return 'M' if random.random() < 0.5 else 'F'

def random_movie_start_time(input_date, interval=30):
    start_datetime = datetime.strptime(input_date, '%Y-%m-%d')
    end_datetime = start_datetime + timedelta(days=interval)
    total_minutes_difference = int((end_datetime - start_datetime).total_seconds() / 60)
    random_minutes = random.choice([0, 15, 30, 45])
    random_minutes_index = random_minutes / 15
    random_minutes_offset = random_minutes_index * 15
    random_minutes_within_range = random.randint(0, total_minutes_difference // 15) * 15
    random_start_datetime = start_datetime + timedelta(minutes=random_minutes_within_range + random_minutes_offset)
    
    return random_start_datetime

def random_transaction_time(input_date):
    input_datetime = datetime.strptime(input_date, '%Y-%m-%d %H:%M:%S')
    start_datetime = input_datetime - timedelta(days=7)  # Start datetime is 7 days before the input date
    end_datetime = input_datetime
    random_datetime = start_datetime + timedelta(days=random.randint(0, 7))
    return random_datetime

def random_datetime_after(input_date):
    input_datetime = datetime.strptime(input_date, '%Y-%m-%d')
    max_timedelta = datetime(2020, 1, 1) - input_datetime
    random_timedelta = random.randint(0, max_timedelta.days)
    random_datetime = input_datetime + timedelta(days=random_timedelta)

    return random_datetime
from django.shortcuts import render

def index(request):
    return render(request, 'servergeodata/index.html')

def profile(request):
    return render(request, 'servergeodata/profile.html')

def project(request):
    return render(request, 'servergeodata/project.html')
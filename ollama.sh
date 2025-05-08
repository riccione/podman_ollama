#!/bin/bash

while true; do
    echo "Please choose an option:"
    echo "1. Start"
    echo "2. Stop"
    echo "3. Status"
    echo "47. Create a new pods"
    echo "57. Clean!"
    echo "77. Pull new images!"
    echo "q. Quit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            echo "Starting ollama and open-webui-pod-0..."
            podman pod start ollama open-webui-pod-0
            ;;
        2)
            echo "Stopping ollama and open-webui-pod-0..."
            podman pod stop ollama open-webui-pod-0
            ;;
        3)
            echo "podman ps..."
            podman ps
            ;;
        47)
            echo "Creating new pods for ollama and open-webui-pod-0..."
            podman kube play ollama.yaml
            podman kube play webui.yaml
            ;;
        57)
            echo "Cleaning all resources for ollama and open-webui-pod-0..."
            podman pod stop ollama open-webui-pod-0
            podman pod rm ollama open-webui-pod-0
            ;;
        77)
            echo "Pulling new images..."
            podman pull docker.io/ollama/ollama
            podman pull ghcr.io/open-webui/open-webui
            ;;
        q|Q)
            echo "Exiting script."
            break
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac

done

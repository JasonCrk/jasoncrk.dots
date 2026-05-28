dkr() {
  case "$1" in
    start)
      systemctl --user start docker.service
      echo "✅ Docker ON"
      ;;

    stop)
      systemctl --user stop docker.service docker.socket 2>/dev/null
      echo "🛑 Docker OFF"
      ;;

    restart)
      systemctl --user restart docker.service
      echo "🔄 Docker RESTARTED"
      ;;

    status)
      systemctl --user status docker.service
      ;;

    is-active)
      systemctl --user is-active docker.service
      ;;

    toggle)
      if systemctl --user is-active --quiet docker.service; then
        systemctl --user stop docker.service docker.socket 2>/dev/null
        echo "🛑 Docker OFF"
      else
        systemctl --user start docker.service
        echo "✅ Docker ON"
      fi
      ;;

    *)
      echo "Commands:"
      echo "  dkr start     # Start Docker"
      echo "  dkr stop      # Stop Docker"
      echo "  dkr restart   # Restart Docker"
      echo "  dkr status    # Check status"
      echo "  dkr toggle    # Toggle Start/Stop"
      ;;
  esac
}

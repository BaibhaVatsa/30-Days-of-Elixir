for i in *.ex; do
	[ -f "$i" ] || break
	elixirc $i || (break; exit 2)
done

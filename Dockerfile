FROM krakend:2.13.8

ENV FC_ENABLE=1
ENV FC_TEMPLATES=/etc/krakend/partials

COPY krakend.tmpl /etc/krakend/krakend.tmpl
COPY partials/ /etc/krakend/partials/

CMD ["run", "-d", "-c", "/etc/krakend/krakend.tmpl"]
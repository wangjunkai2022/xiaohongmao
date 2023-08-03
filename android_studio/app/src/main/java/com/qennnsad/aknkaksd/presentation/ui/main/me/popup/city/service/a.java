package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.service;

import j5.b;
import j5.c;
import java.util.ArrayList;
import java.util.List;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* compiled from: XmlParserHandler.java */
/* loaded from: classes3.dex */
public class a extends DefaultHandler {

    /* renamed from: a  reason: collision with root package name */
    private List<c> f52993a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    c f52994b = new c();

    /* renamed from: c  reason: collision with root package name */
    j5.a f52995c = new j5.a();

    /* renamed from: d  reason: collision with root package name */
    b f52996d = new b();

    public List<c> a() {
        return this.f52993a;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i4, int i10) throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        if (str3.equals("district")) {
            this.f52995c.a().add(this.f52996d);
        } else if (str3.equals("city")) {
            this.f52994b.a().add(this.f52995c);
        } else if (str3.equals("province")) {
            this.f52993a.add(this.f52994b);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (str3.equals("province")) {
            c cVar = new c();
            this.f52994b = cVar;
            cVar.d(attributes.getValue(0));
            this.f52994b.c(new ArrayList());
        } else if (str3.equals("city")) {
            j5.a aVar = new j5.a();
            this.f52995c = aVar;
            aVar.d(attributes.getValue(0));
            this.f52995c.c(new ArrayList());
        } else if (str3.equals("district")) {
            b bVar = new b();
            this.f52996d = bVar;
            bVar.c(attributes.getValue(0));
            this.f52996d.d(attributes.getValue(1));
        }
    }
}

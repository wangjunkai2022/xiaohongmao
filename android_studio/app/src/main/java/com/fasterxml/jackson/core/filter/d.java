package com.fasterxml.jackson.core.filter;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.f;
import java.io.IOException;

/* compiled from: TokenFilterContext.java */
/* loaded from: classes.dex */
public class d extends f {

    /* renamed from: f  reason: collision with root package name */
    protected final d f13857f;

    /* renamed from: g  reason: collision with root package name */
    protected d f13858g;

    /* renamed from: h  reason: collision with root package name */
    protected String f13859h;

    /* renamed from: i  reason: collision with root package name */
    protected TokenFilter f13860i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f13861j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f13862k;

    protected d(int i4, d dVar, TokenFilter tokenFilter, boolean z9) {
        this.f13837a = i4;
        this.f13857f = dVar;
        this.f13860i = tokenFilter;
        this.f13838b = -1;
        this.f13861j = z9;
        this.f13862k = false;
    }

    private void s(JsonGenerator jsonGenerator) throws IOException {
        TokenFilter tokenFilter = this.f13860i;
        if (tokenFilter == null || tokenFilter == TokenFilter.f13839a) {
            return;
        }
        d dVar = this.f13857f;
        if (dVar != null) {
            dVar.s(jsonGenerator);
        }
        if (this.f13861j) {
            if (this.f13862k) {
                this.f13862k = false;
                jsonGenerator.V0(this.f13859h);
                return;
            }
            return;
        }
        this.f13861j = true;
        int i4 = this.f13837a;
        if (i4 != 2) {
            if (i4 == 1) {
                jsonGenerator.G1();
                return;
            }
            return;
        }
        jsonGenerator.K1();
        if (this.f13862k) {
            this.f13862k = false;
            jsonGenerator.V0(this.f13859h);
        }
    }

    public static d z(TokenFilter tokenFilter) {
        return new d(0, null, tokenFilter, true);
    }

    public void A(JsonGenerator jsonGenerator) throws IOException {
        if (this.f13862k) {
            this.f13862k = false;
            jsonGenerator.V0(this.f13859h);
        }
    }

    public d B(d dVar) {
        d dVar2 = this.f13857f;
        if (dVar2 == dVar) {
            return this;
        }
        while (dVar2 != null) {
            d dVar3 = dVar2.f13857f;
            if (dVar3 == dVar) {
                return dVar2;
            }
            dVar2 = dVar3;
        }
        return null;
    }

    public TokenFilter C() {
        return this.f13860i;
    }

    @Override // com.fasterxml.jackson.core.f
    /* renamed from: D */
    public final d e() {
        return this.f13857f;
    }

    public boolean E() {
        return this.f13861j;
    }

    public JsonToken F() {
        if (!this.f13861j) {
            this.f13861j = true;
            if (this.f13837a == 2) {
                return JsonToken.START_OBJECT;
            }
            return JsonToken.START_ARRAY;
        } else if (this.f13862k && this.f13837a == 2) {
            this.f13862k = false;
            return JsonToken.FIELD_NAME;
        } else {
            return null;
        }
    }

    protected d G(int i4, TokenFilter tokenFilter, boolean z9) {
        this.f13837a = i4;
        this.f13860i = tokenFilter;
        this.f13838b = -1;
        this.f13859h = null;
        this.f13861j = z9;
        this.f13862k = false;
        return this;
    }

    public TokenFilter H(String str) throws JsonProcessingException {
        this.f13859h = str;
        this.f13862k = true;
        return this.f13860i;
    }

    public void I() {
        this.f13860i = null;
        for (d dVar = this.f13857f; dVar != null; dVar = dVar.f13857f) {
            this.f13857f.f13860i = null;
        }
    }

    public void J(JsonGenerator jsonGenerator) throws IOException {
        TokenFilter tokenFilter = this.f13860i;
        if (tokenFilter == null || tokenFilter == TokenFilter.f13839a) {
            return;
        }
        d dVar = this.f13857f;
        if (dVar != null) {
            dVar.s(jsonGenerator);
        }
        if (this.f13861j) {
            if (this.f13862k) {
                jsonGenerator.V0(this.f13859h);
                return;
            }
            return;
        }
        this.f13861j = true;
        int i4 = this.f13837a;
        if (i4 == 2) {
            jsonGenerator.K1();
            jsonGenerator.V0(this.f13859h);
        } else if (i4 == 1) {
            jsonGenerator.G1();
        }
    }

    @Override // com.fasterxml.jackson.core.f
    public final String b() {
        return this.f13859h;
    }

    @Override // com.fasterxml.jackson.core.f
    public Object c() {
        return null;
    }

    @Override // com.fasterxml.jackson.core.f
    public boolean i() {
        return this.f13859h != null;
    }

    @Override // com.fasterxml.jackson.core.f
    public void p(Object obj) {
    }

    protected void t(StringBuilder sb) {
        d dVar = this.f13857f;
        if (dVar != null) {
            dVar.t(sb);
        }
        int i4 = this.f13837a;
        if (i4 != 2) {
            if (i4 == 1) {
                sb.append('[');
                sb.append(a());
                sb.append(']');
                return;
            }
            sb.append("/");
            return;
        }
        sb.append('{');
        if (this.f13859h != null) {
            sb.append('\"');
            sb.append(this.f13859h);
            sb.append('\"');
        } else {
            sb.append('?');
        }
        sb.append('}');
    }

    @Override // com.fasterxml.jackson.core.f
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        t(sb);
        return sb.toString();
    }

    public TokenFilter u(TokenFilter tokenFilter) {
        int i4 = this.f13837a;
        if (i4 == 2) {
            return tokenFilter;
        }
        int i10 = this.f13838b + 1;
        this.f13838b = i10;
        if (i4 == 1) {
            return tokenFilter.h(i10);
        }
        return tokenFilter.s(i10);
    }

    public d v(JsonGenerator jsonGenerator) throws IOException {
        if (this.f13861j) {
            jsonGenerator.R0();
        }
        TokenFilter tokenFilter = this.f13860i;
        if (tokenFilter != null && tokenFilter != TokenFilter.f13839a) {
            tokenFilter.b();
        }
        return this.f13857f;
    }

    public d w(JsonGenerator jsonGenerator) throws IOException {
        if (this.f13861j) {
            jsonGenerator.S0();
        }
        TokenFilter tokenFilter = this.f13860i;
        if (tokenFilter != null && tokenFilter != TokenFilter.f13839a) {
            tokenFilter.c();
        }
        return this.f13857f;
    }

    public d x(TokenFilter tokenFilter, boolean z9) {
        d dVar = this.f13858g;
        if (dVar == null) {
            d dVar2 = new d(1, this, tokenFilter, z9);
            this.f13858g = dVar2;
            return dVar2;
        }
        return dVar.G(1, tokenFilter, z9);
    }

    public d y(TokenFilter tokenFilter, boolean z9) {
        d dVar = this.f13858g;
        if (dVar == null) {
            d dVar2 = new d(2, this, tokenFilter, z9);
            this.f13858g = dVar2;
            return dVar2;
        }
        return dVar.G(2, tokenFilter, z9);
    }
}

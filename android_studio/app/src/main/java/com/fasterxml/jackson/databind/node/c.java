package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.f;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NodeCursor.java */
/* loaded from: classes.dex */
public abstract class c extends f {

    /* renamed from: f  reason: collision with root package name */
    protected final c f15575f;

    /* renamed from: g  reason: collision with root package name */
    protected String f15576g;

    /* renamed from: h  reason: collision with root package name */
    protected Object f15577h;

    /* compiled from: NodeCursor.java */
    /* loaded from: classes.dex */
    protected static final class a extends c {

        /* renamed from: i  reason: collision with root package name */
        protected Iterator<com.fasterxml.jackson.databind.e> f15578i;

        /* renamed from: j  reason: collision with root package name */
        protected com.fasterxml.jackson.databind.e f15579j;

        public a(com.fasterxml.jackson.databind.e eVar, c cVar) {
            super(1, cVar);
            this.f15578i = eVar.elements();
        }

        @Override // com.fasterxml.jackson.databind.node.c, com.fasterxml.jackson.core.f
        public /* bridge */ /* synthetic */ f e() {
            return super.e();
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public com.fasterxml.jackson.databind.e s() {
            return this.f15579j;
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public JsonToken v() {
            if (!this.f15578i.hasNext()) {
                this.f15579j = null;
                return JsonToken.END_ARRAY;
            }
            this.f13838b++;
            com.fasterxml.jackson.databind.e next = this.f15578i.next();
            this.f15579j = next;
            return next.asToken();
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public c x() {
            return new a(this.f15579j, this);
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public c y() {
            return new b(this.f15579j, this);
        }
    }

    /* compiled from: NodeCursor.java */
    /* loaded from: classes.dex */
    protected static final class b extends c {

        /* renamed from: i  reason: collision with root package name */
        protected Iterator<Map.Entry<String, com.fasterxml.jackson.databind.e>> f15580i;

        /* renamed from: j  reason: collision with root package name */
        protected Map.Entry<String, com.fasterxml.jackson.databind.e> f15581j;

        /* renamed from: k  reason: collision with root package name */
        protected boolean f15582k;

        public b(com.fasterxml.jackson.databind.e eVar, c cVar) {
            super(2, cVar);
            this.f15580i = ((ObjectNode) eVar).fields();
            this.f15582k = true;
        }

        @Override // com.fasterxml.jackson.databind.node.c, com.fasterxml.jackson.core.f
        public /* bridge */ /* synthetic */ f e() {
            return super.e();
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public com.fasterxml.jackson.databind.e s() {
            Map.Entry<String, com.fasterxml.jackson.databind.e> entry = this.f15581j;
            if (entry == null) {
                return null;
            }
            return entry.getValue();
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public JsonToken v() {
            if (this.f15582k) {
                if (!this.f15580i.hasNext()) {
                    this.f15576g = null;
                    this.f15581j = null;
                    return JsonToken.END_OBJECT;
                }
                this.f13838b++;
                this.f15582k = false;
                Map.Entry<String, com.fasterxml.jackson.databind.e> next = this.f15580i.next();
                this.f15581j = next;
                this.f15576g = next != null ? next.getKey() : null;
                return JsonToken.FIELD_NAME;
            }
            this.f15582k = true;
            return this.f15581j.getValue().asToken();
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public c x() {
            return new a(s(), this);
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public c y() {
            return new b(s(), this);
        }
    }

    /* compiled from: NodeCursor.java */
    /* renamed from: com.fasterxml.jackson.databind.node.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    protected static final class C0121c extends c {

        /* renamed from: i  reason: collision with root package name */
        protected com.fasterxml.jackson.databind.e f15583i;

        /* renamed from: j  reason: collision with root package name */
        protected boolean f15584j;

        public C0121c(com.fasterxml.jackson.databind.e eVar, c cVar) {
            super(0, cVar);
            this.f15584j = false;
            this.f15583i = eVar;
        }

        @Override // com.fasterxml.jackson.databind.node.c, com.fasterxml.jackson.core.f
        public /* bridge */ /* synthetic */ f e() {
            return super.e();
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public com.fasterxml.jackson.databind.e s() {
            if (this.f15584j) {
                return this.f15583i;
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public JsonToken v() {
            if (!this.f15584j) {
                this.f13838b++;
                this.f15584j = true;
                return this.f15583i.asToken();
            }
            this.f15583i = null;
            return null;
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public void w(String str) {
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public c x() {
            return new a(this.f15583i, this);
        }

        @Override // com.fasterxml.jackson.databind.node.c
        public c y() {
            return new b(this.f15583i, this);
        }
    }

    public c(int i4, c cVar) {
        this.f13837a = i4;
        this.f13838b = -1;
        this.f15575f = cVar;
    }

    @Override // com.fasterxml.jackson.core.f
    public final String b() {
        return this.f15576g;
    }

    @Override // com.fasterxml.jackson.core.f
    public Object c() {
        return this.f15577h;
    }

    @Override // com.fasterxml.jackson.core.f
    public void p(Object obj) {
        this.f15577h = obj;
    }

    public abstract com.fasterxml.jackson.databind.e s();

    @Override // com.fasterxml.jackson.core.f
    /* renamed from: t */
    public final c e() {
        return this.f15575f;
    }

    public final c u() {
        com.fasterxml.jackson.databind.e s9 = s();
        if (s9 != null) {
            if (s9.isArray()) {
                return new a(s9, this);
            }
            if (s9.isObject()) {
                return new b(s9, this);
            }
            throw new IllegalStateException("Current node of type " + s9.getClass().getName());
        }
        throw new IllegalStateException("No current node");
    }

    public abstract JsonToken v();

    public void w(String str) {
        this.f15576g = str;
    }

    public abstract c x();

    public abstract c y();
}

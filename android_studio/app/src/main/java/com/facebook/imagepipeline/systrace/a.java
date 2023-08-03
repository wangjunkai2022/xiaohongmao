package com.facebook.imagepipeline.systrace;

import android.os.Trace;
import com.facebook.imagepipeline.systrace.b;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultFrescoSystrace.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a implements b.d {

    /* compiled from: DefaultFrescoSystrace.java */
    /* renamed from: com.facebook.imagepipeline.systrace.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0110a implements b.InterfaceC0111b {

        /* renamed from: a  reason: collision with root package name */
        private final StringBuilder f13370a;

        public C0110a(String name) {
            this.f13370a = new StringBuilder(name);
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public b.InterfaceC0111b a(String key, Object value) {
            StringBuilder sb = this.f13370a;
            sb.append(';');
            sb.append(key);
            sb.append('=');
            sb.append(value == null ? "null" : value.toString());
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public b.InterfaceC0111b b(String key, long value) {
            StringBuilder sb = this.f13370a;
            sb.append(';');
            sb.append(key);
            sb.append('=');
            sb.append(Long.toString(value));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public b.InterfaceC0111b c(String key, int value) {
            StringBuilder sb = this.f13370a;
            sb.append(';');
            sb.append(key);
            sb.append('=');
            sb.append(Integer.toString(value));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public b.InterfaceC0111b d(String key, double value) {
            StringBuilder sb = this.f13370a;
            sb.append(';');
            sb.append(key);
            sb.append('=');
            sb.append(Double.toString(value));
            return this;
        }

        @Override // com.facebook.imagepipeline.systrace.b.InterfaceC0111b
        public void flush() {
            if (this.f13370a.length() > 127) {
                this.f13370a.setLength(127);
            }
            Trace.beginSection(this.f13370a.toString());
        }
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public boolean b() {
        return false;
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public void c(String name) {
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public b.InterfaceC0111b d(String name) {
        return b.f13371a;
    }

    @Override // com.facebook.imagepipeline.systrace.b.d
    public void e() {
    }
}

package com.opensource.svgaplayer.drawer;

import android.graphics.Canvas;
import android.widget.ImageView;
import com.facebook.common.callercontext.ContextChain;
import com.opensource.svgaplayer.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;
import u4.a;
import u4.f;

/* compiled from: SGVADrawer.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0010\u0018\u00002\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0011¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u0006\u001a\f\u0012\b\u0012\u00060\u0005R\u00020\u00000\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\n\u001a\u00020\t2\u0010\u0010\b\u001a\f\u0012\b\u0012\u00060\u0005R\u00020\u00000\u0004H\u0000¢\u0006\u0004\b\n\u0010\u000bJ \u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0017\u0010\u0015\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014R\u0017\u0010\u0017\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/opensource/svgaplayer/drawer/a;", "", "", "frameIndex", "", "Lcom/opensource/svgaplayer/drawer/a$a;", "e", "(I)Ljava/util/List;", "sprites", "", "d", "(Ljava/util/List;)V", "Landroid/graphics/Canvas;", "canvas", "Landroid/widget/ImageView$ScaleType;", "scaleType", "a", "Lcom/opensource/svgaplayer/l;", "c", "Lcom/opensource/svgaplayer/l;", "()Lcom/opensource/svgaplayer/l;", "videoItem", "Lu4/f;", "scaleInfo", "Lu4/f;", "b", "()Lu4/f;", "<init>", "(Lcom/opensource/svgaplayer/l;)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final f f47200a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final a.b<C0394a> f47201b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final l f47202c;

    /* compiled from: SGVADrawer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0004\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0019\u0010\u001aR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0006R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0012R$\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/opensource/svgaplayer/drawer/a$a;", "", "", "a", "Ljava/lang/String;", "f", "()Ljava/lang/String;", ContextChain.TAG_INFRA, "(Ljava/lang/String;)V", "_matteKey", "b", "e", "h", "_imageKey", "c", "matteKey", "imageKey", "Lt4/g;", "()Lt4/g;", "frameEntity", "_frameEntity", "Lt4/g;", "d", "g", "(Lt4/g;)V", "<init>", "(Lcom/opensource/svgaplayer/drawer/a;Ljava/lang/String;Ljava/lang/String;Lt4/g;)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.opensource.svgaplayer.drawer.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public final class C0394a {
        @h

        /* renamed from: a  reason: collision with root package name */
        private String f47203a;
        @h

        /* renamed from: b  reason: collision with root package name */
        private String f47204b;
        @h

        /* renamed from: c  reason: collision with root package name */
        private t4.g f47205c;

        public C0394a(@h String str, @h String str2, @h t4.g gVar) {
            this.f47203a = str;
            this.f47204b = str2;
            this.f47205c = gVar;
        }

        @g
        public final t4.g a() {
            t4.g gVar = this.f47205c;
            if (gVar == null) {
                Intrinsics.throwNpe();
            }
            return gVar;
        }

        @h
        public final String b() {
            return this.f47204b;
        }

        @h
        public final String c() {
            return this.f47203a;
        }

        @h
        public final t4.g d() {
            return this.f47205c;
        }

        @h
        public final String e() {
            return this.f47204b;
        }

        @h
        public final String f() {
            return this.f47203a;
        }

        public final void g(@h t4.g gVar) {
            this.f47205c = gVar;
        }

        public final void h(@h String str) {
            this.f47204b = str;
        }

        public final void i(@h String str) {
            this.f47203a = str;
        }

        public /* synthetic */ C0394a(a aVar, String str, String str2, t4.g gVar, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? null : gVar);
        }
    }

    public a(@g l lVar) {
        this.f47202c = lVar;
        this.f47201b = new a.b<>(Math.max(1, lVar.s().size()));
    }

    public void a(@g Canvas canvas, int i4, @g ImageView.ScaleType scaleType) {
        this.f47200a.g(canvas.getWidth(), canvas.getHeight(), (float) this.f47202c.t().b(), (float) this.f47202c.t().a(), scaleType);
    }

    @g
    public final f b() {
        return this.f47200a;
    }

    @g
    public final l c() {
        return this.f47202c;
    }

    public final void d(@g List<C0394a> list) {
        for (C0394a c0394a : list) {
            this.f47201b.release(c0394a);
        }
    }

    @g
    public final List<C0394a> e(int i4) {
        String b10;
        boolean endsWith$default;
        List<t4.f> s9 = this.f47202c.s();
        ArrayList arrayList = new ArrayList();
        for (t4.f fVar : s9) {
            C0394a c0394a = null;
            if (i4 >= 0 && i4 < fVar.a().size() && (b10 = fVar.b()) != null) {
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(b10, ".matte", false, 2, null);
                if (endsWith$default || fVar.a().get(i4).a() > 0.0d) {
                    c0394a = this.f47201b.acquire();
                    if (c0394a == null) {
                        c0394a = new C0394a(this, null, null, null, 7, null);
                    }
                    c0394a.i(fVar.c());
                    c0394a.h(fVar.b());
                    c0394a.g(fVar.a().get(i4));
                }
            }
            if (c0394a != null) {
                arrayList.add(c0394a);
            }
        }
        return arrayList;
    }
}

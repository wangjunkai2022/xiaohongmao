package com.qennnsad.aknkaksd.util.extentions;

import android.content.Context;
import android.widget.ImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.d;
import com.opensource.svgaplayer.i;
import com.opensource.svgaplayer.l;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import timber.log.Timber;

/* compiled from: SvgaImageViewExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a \u0010\u0006\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView;", "", "cacheName", "Lkotlin/Function0;", "", "onFinished", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c {

    /* compiled from: SvgaImageViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/util/extentions/c$a", "Lcom/opensource/svgaplayer/d;", "", "onFinished", "onPause", "b", "", TypedValues.Attributes.S_FRAME, "", "percentage", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f54702a;

        a(Function0<Unit> function0) {
            this.f54702a = function0;
        }

        @Override // com.opensource.svgaplayer.d
        public void a(int i4, double d4) {
        }

        @Override // com.opensource.svgaplayer.d
        public void b() {
        }

        @Override // com.opensource.svgaplayer.d
        public void onFinished() {
            Timber.f93860a.k("Playing svga finished", new Object[0]);
            this.f54702a.invoke();
        }

        @Override // com.opensource.svgaplayer.d
        public void onPause() {
            Timber.f93860a.k("Playing svga paused", new Object[0]);
        }
    }

    /* compiled from: SvgaImageViewExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/util/extentions/c$b", "Lcom/opensource/svgaplayer/i$d;", "Lcom/opensource/svgaplayer/l;", "entity", "", "b", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b implements i.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f54703a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f54704b;

        b(SVGAImageView sVGAImageView, Function0<Unit> function0) {
            this.f54703a = sVGAImageView;
            this.f54704b = function0;
        }

        @Override // com.opensource.svgaplayer.i.d
        public void a() {
            Timber.f93860a.d("Error during decoding svga. Starting next", new Object[0]);
            this.f54704b.invoke();
        }

        @Override // com.opensource.svgaplayer.i.d
        public void b(@g l entity) {
            Intrinsics.checkNotNullParameter(entity, "entity");
            this.f54703a.setVideoItem(entity);
            this.f54703a.z();
        }
    }

    public static final void a(@g SVGAImageView sVGAImageView, @g String cacheName, @g Function0<Unit> onFinished) {
        Intrinsics.checkNotNullParameter(sVGAImageView, "<this>");
        Intrinsics.checkNotNullParameter(cacheName, "cacheName");
        Intrinsics.checkNotNullParameter(onFinished, "onFinished");
        sVGAImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        sVGAImageView.setCallback(new a(onFinished));
        try {
            i d4 = i.f47267i.d();
            Context context = sVGAImageView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            d4.E(context);
            FileInputStream fin = sVGAImageView.getContext().openFileInput(cacheName);
            Intrinsics.checkNotNullExpressionValue(fin, "fin");
            d4.v(fin, cacheName, new b(sVGAImageView, onFinished), true, null, null);
        } catch (FileNotFoundException e4) {
            Timber.b bVar = Timber.f93860a;
            bVar.d("SVGA " + cacheName + " not found", e4);
            onFinished.invoke();
        } catch (OutOfMemoryError e10) {
            Timber.b bVar2 = Timber.f93860a;
            bVar2.d("SVGA " + cacheName + " was too large. Starting next", e10);
            onFinished.invoke();
        }
    }
}

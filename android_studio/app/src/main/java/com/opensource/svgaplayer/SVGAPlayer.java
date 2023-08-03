package com.opensource.svgaplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import io.sentry.Session;
import java.util.HashMap;
import kotlin.Deprecated;
import kotlin.Metadata;

/* compiled from: SVGAPlayer.kt */
@Deprecated(message = "This class has been deprecated from 2.4.0. We don't recommend you to use it.")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/opensource/svgaplayer/SVGAPlayer;", "Lcom/opensource/svgaplayer/SVGAImageView;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", Session.b.f81849j, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", a.f47177b}, k = 1, mv = {1, 1, 15})
/* loaded from: classes3.dex */
public final class SVGAPlayer extends SVGAImageView {

    /* renamed from: q  reason: collision with root package name */
    private HashMap f47175q;

    public SVGAPlayer(@m8.g Context context) {
        super(context, null, 0, 6, null);
    }

    @Override // com.opensource.svgaplayer.SVGAImageView
    public void a() {
        HashMap hashMap = this.f47175q;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.opensource.svgaplayer.SVGAImageView
    public View b(int i4) {
        if (this.f47175q == null) {
            this.f47175q = new HashMap();
        }
        View view = (View) this.f47175q.get(Integer.valueOf(i4));
        if (view == null) {
            View findViewById = findViewById(i4);
            this.f47175q.put(Integer.valueOf(i4), findViewById);
            return findViewById;
        }
        return view;
    }

    public SVGAPlayer(@m8.g Context context, @m8.g AttributeSet attributeSet) {
        super(context, attributeSet, 0, 4, null);
    }

    public SVGAPlayer(@m8.g Context context, @m8.g AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}

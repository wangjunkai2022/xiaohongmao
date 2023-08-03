package com.google.android.exoplayer2.ui;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AlertDialog;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.ui.q;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: TrackSelectionDialogBuilder.java */
/* loaded from: classes2.dex */
public final class y0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f26936a;
    @StyleRes

    /* renamed from: b  reason: collision with root package name */
    private int f26937b;

    /* renamed from: c  reason: collision with root package name */
    private final CharSequence f26938c;

    /* renamed from: d  reason: collision with root package name */
    private final i.a f26939d;

    /* renamed from: e  reason: collision with root package name */
    private final int f26940e;

    /* renamed from: f  reason: collision with root package name */
    private final a f26941f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f26942g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f26943h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26944i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private v0 f26945j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f26946k;

    /* renamed from: l  reason: collision with root package name */
    private List<DefaultTrackSelector.SelectionOverride> f26947l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Comparator<Format> f26948m;

    /* compiled from: TrackSelectionDialogBuilder.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(boolean z9, List<DefaultTrackSelector.SelectionOverride> list);
    }

    public y0(Context context, CharSequence charSequence, i.a aVar, int i4, a aVar2) {
        this.f26936a = context;
        this.f26938c = charSequence;
        this.f26939d = aVar;
        this.f26940e = i4;
        this.f26941f = aVar2;
        this.f26947l = Collections.emptyList();
    }

    @Nullable
    private Dialog d() {
        try {
            Class cls = Integer.TYPE;
            Object newInstance = AlertDialog.Builder.class.getConstructor(Context.class, cls).newInstance(this.f26936a, Integer.valueOf(this.f26937b));
            View inflate = LayoutInflater.from((Context) AlertDialog.Builder.class.getMethod("getContext", new Class[0]).invoke(newInstance, new Object[0])).inflate(q.i.f26710l, (ViewGroup) null);
            DialogInterface.OnClickListener q9 = q(inflate);
            AlertDialog.Builder.class.getMethod("setTitle", CharSequence.class).invoke(newInstance, this.f26938c);
            AlertDialog.Builder.class.getMethod("setView", View.class).invoke(newInstance, inflate);
            AlertDialog.Builder.class.getMethod("setPositiveButton", cls, DialogInterface.OnClickListener.class).invoke(newInstance, 17039370, q9);
            AlertDialog.Builder.class.getMethod("setNegativeButton", cls, DialogInterface.OnClickListener.class).invoke(newInstance, 17039360, null);
            return (Dialog) AlertDialog.Builder.class.getMethod("create", new Class[0]).invoke(newInstance, new Object[0]);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Exception e4) {
            throw new IllegalStateException(e4);
        }
    }

    private Dialog e() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f26936a, this.f26937b);
        View inflate = LayoutInflater.from(builder.getContext()).inflate(q.i.f26710l, (ViewGroup) null);
        return builder.setTitle(this.f26938c).setView(inflate).setPositiveButton(17039370, q(inflate)).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(DefaultTrackSelector defaultTrackSelector, DefaultTrackSelector.Parameters parameters, int i4, TrackGroupArray trackGroupArray, boolean z9, List list) {
        defaultTrackSelector.M(com.google.android.exoplayer2.trackselection.n.c(parameters, i4, trackGroupArray, z9, list.isEmpty() ? null : (DefaultTrackSelector.SelectionOverride) list.get(0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(TrackSelectionView trackSelectionView, DialogInterface dialogInterface, int i4) {
        this.f26941f.a(trackSelectionView.getIsDisabled(), trackSelectionView.getOverrides());
    }

    private DialogInterface.OnClickListener q(View view) {
        final TrackSelectionView trackSelectionView = (TrackSelectionView) view.findViewById(q.g.R0);
        trackSelectionView.setAllowMultipleOverrides(this.f26943h);
        trackSelectionView.setAllowAdaptiveSelections(this.f26942g);
        trackSelectionView.setShowDisableOption(this.f26944i);
        v0 v0Var = this.f26945j;
        if (v0Var != null) {
            trackSelectionView.setTrackNameProvider(v0Var);
        }
        trackSelectionView.e(this.f26939d, this.f26940e, this.f26946k, this.f26947l, this.f26948m, null);
        return new DialogInterface.OnClickListener() { // from class: com.google.android.exoplayer2.ui.w0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                y0.this.g(trackSelectionView, dialogInterface, i4);
            }
        };
    }

    public Dialog c() {
        Dialog d4 = d();
        return d4 == null ? e() : d4;
    }

    public y0 h(boolean z9) {
        this.f26942g = z9;
        return this;
    }

    public y0 i(boolean z9) {
        this.f26943h = z9;
        return this;
    }

    public y0 j(boolean z9) {
        this.f26946k = z9;
        return this;
    }

    public y0 k(@Nullable DefaultTrackSelector.SelectionOverride selectionOverride) {
        return l(selectionOverride == null ? Collections.emptyList() : Collections.singletonList(selectionOverride));
    }

    public y0 l(List<DefaultTrackSelector.SelectionOverride> list) {
        this.f26947l = list;
        return this;
    }

    public y0 m(boolean z9) {
        this.f26944i = z9;
        return this;
    }

    public y0 n(@StyleRes int i4) {
        this.f26937b = i4;
        return this;
    }

    public void o(@Nullable Comparator<Format> comparator) {
        this.f26948m = comparator;
    }

    public y0 p(@Nullable v0 v0Var) {
        this.f26945j = v0Var;
        return this;
    }

    public y0(Context context, CharSequence charSequence, final DefaultTrackSelector defaultTrackSelector, final int i4) {
        this.f26936a = context;
        this.f26938c = charSequence;
        i.a aVar = (i.a) com.google.android.exoplayer2.util.a.g(defaultTrackSelector.g());
        this.f26939d = aVar;
        this.f26940e = i4;
        final TrackGroupArray g4 = aVar.g(i4);
        final DefaultTrackSelector.Parameters v9 = defaultTrackSelector.v();
        this.f26946k = v9.getRendererDisabled(i4);
        DefaultTrackSelector.SelectionOverride selectionOverride = v9.getSelectionOverride(i4, g4);
        this.f26947l = selectionOverride == null ? Collections.emptyList() : Collections.singletonList(selectionOverride);
        this.f26941f = new a() { // from class: com.google.android.exoplayer2.ui.x0
            @Override // com.google.android.exoplayer2.ui.y0.a
            public final void a(boolean z9, List list) {
                y0.f(DefaultTrackSelector.this, v9, i4, g4, z9, list);
            }
        };
    }
}

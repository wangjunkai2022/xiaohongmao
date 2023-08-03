package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.ui.TrackSelectionView;
import com.google.android.exoplayer2.ui.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f26306a;

    /* renamed from: b  reason: collision with root package name */
    private final LayoutInflater f26307b;

    /* renamed from: c  reason: collision with root package name */
    private final CheckedTextView f26308c;

    /* renamed from: d  reason: collision with root package name */
    private final CheckedTextView f26309d;

    /* renamed from: e  reason: collision with root package name */
    private final b f26310e;

    /* renamed from: f  reason: collision with root package name */
    private final SparseArray<DefaultTrackSelector.SelectionOverride> f26311f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f26312g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f26313h;

    /* renamed from: i  reason: collision with root package name */
    private v0 f26314i;

    /* renamed from: j  reason: collision with root package name */
    private CheckedTextView[][] f26315j;

    /* renamed from: k  reason: collision with root package name */
    private i.a f26316k;

    /* renamed from: l  reason: collision with root package name */
    private int f26317l;

    /* renamed from: m  reason: collision with root package name */
    private TrackGroupArray f26318m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26319n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Comparator<c> f26320o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private d f26321p;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.g(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f26323a;

        /* renamed from: b  reason: collision with root package name */
        public final int f26324b;

        /* renamed from: c  reason: collision with root package name */
        public final Format f26325c;

        public c(int i4, int i10, Format format) {
            this.f26323a = i4;
            this.f26324b = i10;
            this.f26325c = format;
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(boolean z9, List<DefaultTrackSelector.SelectionOverride> list);
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    private static int[] c(int[] iArr, int i4) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[copyOf.length - 1] = i4;
        return copyOf;
    }

    private static int[] d(int[] iArr, int i4) {
        int[] iArr2 = new int[iArr.length - 1];
        int i10 = 0;
        for (int i11 : iArr) {
            if (i11 != i4) {
                iArr2[i10] = i11;
                i10++;
            }
        }
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int f(Comparator comparator, c cVar, c cVar2) {
        return comparator.compare(cVar.f26325c, cVar2.f26325c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(View view) {
        if (view == this.f26308c) {
            i();
        } else if (view == this.f26309d) {
            h();
        } else {
            j(view);
        }
        m();
        d dVar = this.f26321p;
        if (dVar != null) {
            dVar.a(getIsDisabled(), getOverrides());
        }
    }

    private void h() {
        this.f26319n = false;
        this.f26311f.clear();
    }

    private void i() {
        this.f26319n = true;
        this.f26311f.clear();
    }

    private void j(View view) {
        this.f26319n = false;
        c cVar = (c) com.google.android.exoplayer2.util.a.g(view.getTag());
        int i4 = cVar.f26323a;
        int i10 = cVar.f26324b;
        DefaultTrackSelector.SelectionOverride selectionOverride = this.f26311f.get(i4);
        com.google.android.exoplayer2.util.a.g(this.f26316k);
        if (selectionOverride == null) {
            if (!this.f26313h && this.f26311f.size() > 0) {
                this.f26311f.clear();
            }
            this.f26311f.put(i4, new DefaultTrackSelector.SelectionOverride(i4, i10));
            return;
        }
        int i11 = selectionOverride.length;
        int[] iArr = selectionOverride.tracks;
        boolean isChecked = ((CheckedTextView) view).isChecked();
        boolean k10 = k(i4);
        boolean z9 = k10 || l();
        if (isChecked && z9) {
            if (i11 == 1) {
                this.f26311f.remove(i4);
            } else {
                this.f26311f.put(i4, new DefaultTrackSelector.SelectionOverride(i4, d(iArr, i10)));
            }
        } else if (isChecked) {
        } else {
            if (k10) {
                this.f26311f.put(i4, new DefaultTrackSelector.SelectionOverride(i4, c(iArr, i10)));
            } else {
                this.f26311f.put(i4, new DefaultTrackSelector.SelectionOverride(i4, i10));
            }
        }
    }

    @RequiresNonNull({"mappedTrackInfo"})
    private boolean k(int i4) {
        return this.f26312g && this.f26318m.get(i4).length > 1 && this.f26316k.a(this.f26317l, i4, false) != 0;
    }

    private boolean l() {
        return this.f26313h && this.f26318m.length > 1;
    }

    private void m() {
        this.f26308c.setChecked(this.f26319n);
        this.f26309d.setChecked(!this.f26319n && this.f26311f.size() == 0);
        for (int i4 = 0; i4 < this.f26315j.length; i4++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = this.f26311f.get(i4);
            int i10 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.f26315j;
                if (i10 < checkedTextViewArr[i4].length) {
                    if (selectionOverride != null) {
                        this.f26315j[i4][i10].setChecked(selectionOverride.containsTrack(((c) com.google.android.exoplayer2.util.a.g(checkedTextViewArr[i4][i10].getTag())).f26324b));
                    } else {
                        checkedTextViewArr[i4][i10].setChecked(false);
                    }
                    i10++;
                }
            }
        }
    }

    private void n() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f26316k == null) {
            this.f26308c.setEnabled(false);
            this.f26309d.setEnabled(false);
            return;
        }
        this.f26308c.setEnabled(true);
        this.f26309d.setEnabled(true);
        TrackGroupArray g4 = this.f26316k.g(this.f26317l);
        this.f26318m = g4;
        this.f26315j = new CheckedTextView[g4.length];
        boolean l10 = l();
        int i4 = 0;
        while (true) {
            TrackGroupArray trackGroupArray = this.f26318m;
            if (i4 < trackGroupArray.length) {
                TrackGroup trackGroup = trackGroupArray.get(i4);
                boolean k10 = k(i4);
                CheckedTextView[][] checkedTextViewArr = this.f26315j;
                int i10 = trackGroup.length;
                checkedTextViewArr[i4] = new CheckedTextView[i10];
                c[] cVarArr = new c[i10];
                for (int i11 = 0; i11 < trackGroup.length; i11++) {
                    cVarArr[i11] = new c(i4, i11, trackGroup.getFormat(i11));
                }
                Comparator<c> comparator = this.f26320o;
                if (comparator != null) {
                    Arrays.sort(cVarArr, comparator);
                }
                for (int i12 = 0; i12 < i10; i12++) {
                    if (i12 == 0) {
                        addView(this.f26307b.inflate(q.i.f26700b, (ViewGroup) this, false));
                    }
                    CheckedTextView checkedTextView = (CheckedTextView) this.f26307b.inflate((k10 || l10) ? 17367056 : 17367055, (ViewGroup) this, false);
                    checkedTextView.setBackgroundResource(this.f26306a);
                    checkedTextView.setText(this.f26314i.a(cVarArr[i12].f26325c));
                    checkedTextView.setTag(cVarArr[i12]);
                    if (this.f26316k.h(this.f26317l, i4, i12) == 4) {
                        checkedTextView.setFocusable(true);
                        checkedTextView.setOnClickListener(this.f26310e);
                    } else {
                        checkedTextView.setFocusable(false);
                        checkedTextView.setEnabled(false);
                    }
                    this.f26315j[i4][i12] = checkedTextView;
                    addView(checkedTextView);
                }
                i4++;
            } else {
                m();
                return;
            }
        }
    }

    public void e(i.a aVar, int i4, boolean z9, List<DefaultTrackSelector.SelectionOverride> list, @Nullable final Comparator<Format> comparator, @Nullable d dVar) {
        this.f26316k = aVar;
        this.f26317l = i4;
        this.f26319n = z9;
        this.f26320o = comparator == null ? null : new Comparator() { // from class: com.google.android.exoplayer2.ui.z0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int f10;
                f10 = TrackSelectionView.f(comparator, (TrackSelectionView.c) obj, (TrackSelectionView.c) obj2);
                return f10;
            }
        };
        this.f26321p = dVar;
        int size = this.f26313h ? list.size() : Math.min(list.size(), 1);
        for (int i10 = 0; i10 < size; i10++) {
            DefaultTrackSelector.SelectionOverride selectionOverride = list.get(i10);
            this.f26311f.put(selectionOverride.groupIndex, selectionOverride);
        }
        n();
    }

    public boolean getIsDisabled() {
        return this.f26319n;
    }

    public List<DefaultTrackSelector.SelectionOverride> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f26311f.size());
        for (int i4 = 0; i4 < this.f26311f.size(); i4++) {
            arrayList.add(this.f26311f.valueAt(i4));
        }
        return arrayList;
    }

    public void setAllowAdaptiveSelections(boolean z9) {
        if (this.f26312g != z9) {
            this.f26312g = z9;
            n();
        }
    }

    public void setAllowMultipleOverrides(boolean z9) {
        if (this.f26313h != z9) {
            this.f26313h = z9;
            if (!z9 && this.f26311f.size() > 1) {
                for (int size = this.f26311f.size() - 1; size > 0; size--) {
                    this.f26311f.remove(size);
                }
            }
            n();
        }
    }

    public void setShowDisableOption(boolean z9) {
        this.f26308c.setVisibility(z9 ? 0 : 8);
    }

    public void setTrackNameProvider(v0 v0Var) {
        this.f26314i = (v0) com.google.android.exoplayer2.util.a.g(v0Var);
        n();
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet, @AttrRes int i4) {
        super(context, attributeSet, i4);
        setOrientation(1);
        this.f26311f = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f26306a = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f26307b = from;
        b bVar = new b();
        this.f26310e = bVar;
        this.f26314i = new h(getResources());
        this.f26318m = TrackGroupArray.EMPTY;
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f26308c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(q.k.Q);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(q.i.f26700b, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f26309d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(q.k.P);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }
}

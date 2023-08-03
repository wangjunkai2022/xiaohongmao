package io.github.rockerhieu.emojicon;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import io.github.rockerhieu.emojicon.emoji.Emojicon;
import io.github.rockerhieu.emojicon.g;

/* compiled from: EmojiconGridFragment.java */
/* loaded from: classes3.dex */
public class c extends Fragment implements AdapterView.OnItemClickListener {

    /* renamed from: f  reason: collision with root package name */
    private static final String f69862f = "useSystemDefaults";

    /* renamed from: g  reason: collision with root package name */
    private static final String f69863g = "emojicons";

    /* renamed from: h  reason: collision with root package name */
    private static final String f69864h = "emojiconType";

    /* renamed from: a  reason: collision with root package name */
    private a f69865a;

    /* renamed from: b  reason: collision with root package name */
    private d f69866b;

    /* renamed from: c  reason: collision with root package name */
    private Emojicon[] f69867c;

    /* renamed from: d  reason: collision with root package name */
    private int f69868d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f69869e = false;

    /* compiled from: EmojiconGridFragment.java */
    /* loaded from: classes3.dex */
    public interface a {
        void i(Emojicon emojicon);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static c U(int i4, d dVar, boolean z9) {
        return V(i4, null, dVar, z9);
    }

    protected static c V(int i4, Emojicon[] emojiconArr, d dVar, boolean z9) {
        c cVar = new c();
        Bundle bundle = new Bundle();
        bundle.putInt(f69864h, i4);
        bundle.putParcelableArray(f69863g, emojiconArr);
        bundle.putBoolean(f69862f, z9);
        cVar.setArguments(bundle);
        cVar.X(dVar);
        return cVar;
    }

    protected static c W(Emojicon[] emojiconArr, d dVar) {
        return V(0, emojiconArr, dVar, false);
    }

    private void X(d dVar) {
        this.f69866b = dVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof a) {
            this.f69865a = (a) context;
        } else if (getParentFragment() instanceof a) {
            this.f69865a = (a) getParentFragment();
        } else {
            throw new IllegalArgumentException(context + " must implement interface " + a.class.getSimpleName());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(g.m.D, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f69865a = null;
        super.onDetach();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
        a aVar = this.f69865a;
        if (aVar != null) {
            aVar.i((Emojicon) adapterView.getItemAtPosition(i4));
        }
        d dVar = this.f69866b;
        if (dVar != null) {
            dVar.s(view.getContext(), (Emojicon) adapterView.getItemAtPosition(i4));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArray(f69863g, this.f69867c);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        GridView gridView = (GridView) view.findViewById(g.j.f70273a);
        Bundle arguments = getArguments();
        if (arguments == null) {
            this.f69868d = 0;
            this.f69867c = io.github.rockerhieu.emojicon.emoji.c.f69875a;
            this.f69869e = false;
        } else {
            int i4 = arguments.getInt(f69864h);
            this.f69868d = i4;
            if (i4 == 0) {
                Parcelable[] parcelableArray = arguments.getParcelableArray(f69863g);
                this.f69867c = new Emojicon[parcelableArray.length];
                for (int i10 = 0; i10 < parcelableArray.length; i10++) {
                    this.f69867c[i10] = (Emojicon) parcelableArray[i10];
                }
            } else {
                this.f69867c = Emojicon.getEmojicons(i4);
            }
            this.f69869e = arguments.getBoolean(f69862f);
        }
        gridView.setAdapter((ListAdapter) new b(view.getContext(), this.f69867c, this.f69869e));
        gridView.setOnItemClickListener(this);
    }
}

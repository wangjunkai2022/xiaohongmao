package io.github.rockerhieu.emojicon;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import io.github.rockerhieu.emojicon.emoji.Emojicon;
import io.github.rockerhieu.emojicon.g;

/* compiled from: EmojiconRecentsGridFragment.java */
/* loaded from: classes3.dex */
public class e extends c implements d {

    /* renamed from: k  reason: collision with root package name */
    private static final String f69870k = "useSystemDefaults";

    /* renamed from: i  reason: collision with root package name */
    private b f69871i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f69872j = false;

    protected static e Y() {
        return Z(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static e Z(boolean z9) {
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putBoolean(f69870k, z9);
        eVar.setArguments(bundle);
        return eVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f69872j = getArguments().getBoolean(f69870k);
        } else {
            this.f69872j = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69871i = null;
    }

    @Override // io.github.rockerhieu.emojicon.c, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.f69871i = new b(view.getContext(), EmojiconRecentsManager.getInstance(view.getContext()), this.f69872j);
        GridView gridView = (GridView) view.findViewById(g.j.f70273a);
        gridView.setAdapter((ListAdapter) this.f69871i);
        gridView.setOnItemClickListener(this);
    }

    @Override // io.github.rockerhieu.emojicon.d
    public void s(Context context, Emojicon emojicon) {
        EmojiconRecentsManager.getInstance(context).push(emojicon);
        b bVar = this.f69871i;
        if (bVar != null) {
            bVar.notifyDataSetChanged();
        }
    }
}

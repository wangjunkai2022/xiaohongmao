package iamutkarshtiwari.github.io.ananas.editimage.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.m0;
import m8.g;

/* compiled from: StickerTypeAdapter.java */
/* loaded from: classes3.dex */
public class f extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private String[] f69360a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f69361b;

    /* renamed from: c  reason: collision with root package name */
    private int[] f69362c;

    /* renamed from: d  reason: collision with root package name */
    private m0 f69363d;

    /* renamed from: e  reason: collision with root package name */
    private b f69364e = new b();

    /* compiled from: StickerTypeAdapter.java */
    /* loaded from: classes3.dex */
    private final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag(b.i.J3)).intValue();
            f.this.f69363d.p0((String) view.getTag(b.i.K3), intValue);
        }
    }

    /* compiled from: StickerTypeAdapter.java */
    /* loaded from: classes3.dex */
    public class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f69366a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f69367b;

        c(View view) {
            super(view);
            this.f69366a = (ImageView) view.findViewById(b.i.L3);
            this.f69367b = (TextView) view.findViewById(b.i.f66833j8);
        }
    }

    public f(m0 m0Var) {
        this.f69363d = m0Var;
        this.f69360a = m0Var.getResources().getStringArray(b.c.f65982g);
        this.f69361b = this.f69363d.getResources().getStringArray(b.c.f65981f);
        this.f69362c = this.f69363d.getResources().getIntArray(b.c.f65980e);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f69361b.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@g RecyclerView.ViewHolder viewHolder, int i4) {
        c cVar = (c) viewHolder;
        cVar.f69367b.setText(this.f69361b[i4]);
        cVar.f69367b.setTag(b.i.K3, this.f69360a[i4]);
        cVar.f69367b.setTag(b.i.J3, Integer.valueOf(this.f69362c[i4]));
        cVar.f69367b.setOnClickListener(this.f69364e);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @g
    public RecyclerView.ViewHolder onCreateViewHolder(@g ViewGroup viewGroup, int i4) {
        return new c(LayoutInflater.from(viewGroup.getContext()).inflate(b.l.f67073j2, viewGroup, false));
    }
}

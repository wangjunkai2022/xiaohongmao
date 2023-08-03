package iamutkarshtiwari.github.io.ananas.editimage.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.v;

/* compiled from: FilterAdapter.java */
/* loaded from: classes3.dex */
public class d extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: e  reason: collision with root package name */
    private static final int f69351e = 1;

    /* renamed from: a  reason: collision with root package name */
    private String[] f69352a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f69353b;

    /* renamed from: c  reason: collision with root package name */
    private v f69354c;

    /* renamed from: d  reason: collision with root package name */
    private Context f69355d;

    public d(v vVar, Context context) {
        this.f69354c = vVar;
        this.f69355d = context;
        this.f69352a = vVar.getResources().getStringArray(b.c.f65979d);
        this.f69353b = this.f69354c.getResources().getStringArray(b.c.f65978c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(int i4, View view) {
        this.f69354c.f0(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f69353b.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, final int i4) {
        g7.b bVar = (g7.b) viewHolder;
        bVar.f67848b.setText(this.f69352a[i4]);
        bVar.f67847a.setImageDrawable(this.f69354c.getResources().getDrawable(this.f69354c.getResources().getIdentifier("drawable/" + this.f69353b[i4], "drawable", this.f69355d.getPackageName())));
        bVar.f67847a.setTag(Integer.valueOf(i4));
        bVar.f67847a.setOnClickListener(new View.OnClickListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.adapter.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.this.e(i4, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        return new g7.b(LayoutInflater.from(viewGroup.getContext()).inflate(b.l.Z, viewGroup, false));
    }
}

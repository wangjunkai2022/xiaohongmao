package iamutkarshtiwari.github.io.ananas.editimage.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.adapter.a;
import java.util.ArrayList;
import java.util.List;
import m8.g;

/* compiled from: ColorPickerAdapter.java */
/* loaded from: classes3.dex */
public class a extends RecyclerView.Adapter<b> {

    /* renamed from: a  reason: collision with root package name */
    private LayoutInflater f69343a;

    /* renamed from: b  reason: collision with root package name */
    private List<Integer> f69344b;

    /* renamed from: c  reason: collision with root package name */
    private InterfaceC0531a f69345c;

    /* compiled from: ColorPickerAdapter.java */
    /* renamed from: iamutkarshtiwari.github.io.ananas.editimage.adapter.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0531a {
        void a(int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ColorPickerAdapter.java */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f69346a;

        b(View view) {
            super(view);
            this.f69346a = view.findViewById(b.i.O1);
            view.setOnClickListener(new View.OnClickListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.adapter.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    a.b.this.c(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(View view) {
            if (a.this.f69345c != null) {
                a.this.f69345c.a(((Integer) a.this.f69344b.get(getAdapterPosition())).intValue());
            }
        }
    }

    public a(@NonNull Context context) {
        this.f69343a = LayoutInflater.from(context);
        this.f69344b = f(context);
    }

    private List<Integer> f(Context context) {
        Resources resources = context.getResources();
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (i4 <= 21) {
            StringBuilder sb = new StringBuilder();
            sb.append("kelly_");
            i4++;
            sb.append(i4);
            arrayList.add(Integer.valueOf(resources.getColor(resources.getIdentifier(sb.toString(), "color", context.getPackageName()))));
        }
        return arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(@g b bVar, int i4) {
        bVar.f69346a.setBackgroundColor(this.f69344b.get(i4).intValue());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f69344b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @g
    /* renamed from: h */
    public b onCreateViewHolder(@g ViewGroup viewGroup, int i4) {
        return new b(this.f69343a.inflate(b.l.F, viewGroup, false));
    }

    public void i(InterfaceC0531a interfaceC0531a) {
        this.f69345c = interfaceC0531a;
    }
}

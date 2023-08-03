package iamutkarshtiwari.github.io.ananas.editimage.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.fragment.m0;
import java.util.ArrayList;
import java.util.List;

/* compiled from: StickerAdapter.java */
/* loaded from: classes3.dex */
public class e extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private m0 f69356a;

    /* renamed from: b  reason: collision with root package name */
    private b f69357b = new b();

    /* renamed from: c  reason: collision with root package name */
    private List<String> f69358c = new ArrayList();

    /* compiled from: StickerAdapter.java */
    /* loaded from: classes3.dex */
    private final class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.f69356a.o0((String) view.getTag());
        }
    }

    public e(m0 m0Var) {
        this.f69356a = m0Var;
    }

    public void e(String str, int i4) {
        this.f69358c.clear();
        int i10 = 0;
        while (i10 < i4) {
            List<String> list = this.f69358c;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("_");
            i10++;
            sb.append(Integer.toString(i10));
            list.add(sb.toString());
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f69358c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
        g7.d dVar = (g7.d) viewHolder;
        String str = "drawable/" + this.f69358c.get(i4);
        dVar.f67850a.setImageDrawable(this.f69356a.getResources().getDrawable(this.f69356a.getResources().getIdentifier(str, "drawable", this.f69356a.getContext().getPackageName())));
        dVar.f67850a.setTag(str);
        dVar.f67850a.setOnClickListener(this.f69357b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        return new g7.d(LayoutInflater.from(viewGroup.getContext()).inflate(b.l.f67069i2, viewGroup, false));
    }
}

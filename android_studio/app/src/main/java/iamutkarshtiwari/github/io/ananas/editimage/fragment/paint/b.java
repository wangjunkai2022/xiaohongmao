package iamutkarshtiwari.github.io.ananas.editimage.fragment.paint;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import f7.b;
import iamutkarshtiwari.github.io.ananas.editimage.adapter.a;

/* compiled from: BrushConfigDialog.java */
/* loaded from: classes3.dex */
public class b extends BottomSheetDialogFragment implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private a f69497a;

    /* compiled from: BrushConfigDialog.java */
    /* loaded from: classes3.dex */
    public interface a {
        void I(int i4);

        void d(int i4);

        void t(int i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V(int i4) {
        if (this.f69497a != null) {
            dismiss();
            this.f69497a.t(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W(a aVar) {
        this.f69497a = aVar;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(b.l.f67035a0, viewGroup, false);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i4, boolean z9) {
        a aVar;
        int id = seekBar.getId();
        if (id == b.i.H6) {
            a aVar2 = this.f69497a;
            if (aVar2 != null) {
                aVar2.I(i4);
            }
        } else if (id != b.i.I6 || (aVar = this.f69497a) == null) {
        } else {
            aVar.d(i4);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(b.i.C6);
        ((SeekBar) view.findViewById(b.i.H6)).setOnSeekBarChangeListener(this);
        ((SeekBar) view.findViewById(b.i.I6)).setOnSeekBarChangeListener(this);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        recyclerView.setHasFixedSize(true);
        iamutkarshtiwari.github.io.ananas.editimage.adapter.a aVar = new iamutkarshtiwari.github.io.ananas.editimage.adapter.a(getActivity());
        aVar.i(new a.InterfaceC0531a() { // from class: iamutkarshtiwari.github.io.ananas.editimage.fragment.paint.a
            @Override // iamutkarshtiwari.github.io.ananas.editimage.adapter.a.InterfaceC0531a
            public final void a(int i4) {
                b.this.V(i4);
            }
        });
        recyclerView.setAdapter(aVar);
    }
}

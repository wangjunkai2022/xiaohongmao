package iamutkarshtiwari.github.io.ananas.editimage.fragment.paint;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import f7.b;

/* compiled from: EraserConfigDialog.java */
/* loaded from: classes3.dex */
public class c extends BottomSheetDialogFragment implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private a f69498a;

    /* compiled from: EraserConfigDialog.java */
    /* loaded from: classes3.dex */
    public interface a {
        void d(int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(a aVar) {
        this.f69498a = aVar;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(b.l.f67079l0, viewGroup, false);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i4, boolean z9) {
        a aVar;
        if (seekBar.getId() != b.i.I6 || (aVar = this.f69498a) == null) {
            return;
        }
        aVar.d(i4);
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
        ((SeekBar) view.findViewById(b.i.I6)).setOnSeekBarChangeListener(this);
    }
}

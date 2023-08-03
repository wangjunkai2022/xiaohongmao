package com.theartofdev.edmodo.cropper;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.theartofdev.edmodo.cropper.CropImage;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.g;
import java.io.File;
import java.io.IOException;

/* loaded from: classes3.dex */
public class CropImageActivity extends AppCompatActivity implements CropImageView.g, CropImageView.c {

    /* renamed from: a  reason: collision with root package name */
    private CropImageView f58830a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f58831b;

    /* renamed from: c  reason: collision with root package name */
    private CropImageOptions f58832c;

    private void O(Menu menu, int i4, int i10) {
        Drawable icon;
        MenuItem findItem = menu.findItem(i4);
        if (findItem == null || (icon = findItem.getIcon()) == null) {
            return;
        }
        try {
            icon.mutate();
            icon.setColorFilter(i10, PorterDuff.Mode.SRC_ATOP);
            findItem.setIcon(icon);
        } catch (Exception e4) {
            Log.w("AIC", "Failed to update menu item color", e4);
        }
    }

    protected void G() {
        if (this.f58832c.noOutputImage) {
            M(null, null, 1);
            return;
        }
        Uri H = H();
        CropImageView cropImageView = this.f58830a;
        CropImageOptions cropImageOptions = this.f58832c;
        cropImageView.E(H, cropImageOptions.outputCompressFormat, cropImageOptions.outputCompressQuality, cropImageOptions.outputRequestWidth, cropImageOptions.outputRequestHeight, cropImageOptions.outputRequestSizeOptions);
    }

    protected Uri H() {
        Uri uri = this.f58832c.outputUri;
        if (uri == null || uri.equals(Uri.EMPTY)) {
            try {
                Bitmap.CompressFormat compressFormat = this.f58832c.outputCompressFormat;
                return Uri.fromFile(File.createTempFile("cropped", compressFormat == Bitmap.CompressFormat.JPEG ? ".jpg" : compressFormat == Bitmap.CompressFormat.PNG ? ".png" : ".webp", getCacheDir()));
            } catch (IOException e4) {
                throw new RuntimeException("Failed to create temp file for output image", e4);
            }
        }
        return uri;
    }

    protected Intent I(Uri uri, Exception exc, int i4) {
        CropImage.ActivityResult activityResult = new CropImage.ActivityResult(this.f58830a.getImageUri(), uri, exc, this.f58830a.getCropPoints(), this.f58830a.getCropRect(), this.f58830a.getRotatedDegrees(), this.f58830a.getWholeImageRect(), i4);
        Intent intent = new Intent();
        intent.putExtras(getIntent());
        intent.putExtra(CropImage.f58822d, activityResult);
        return intent;
    }

    protected void J(int i4) {
        this.f58830a.A(i4);
    }

    protected void M(Uri uri, Exception exc, int i4) {
        setResult(exc == null ? -1 : 204, I(uri, exc, i4));
        finish();
    }

    protected void N() {
        setResult(0);
        finish();
    }

    @Override // com.theartofdev.edmodo.cropper.CropImageView.c
    public void g(CropImageView cropImageView, CropImageView.b bVar) {
        M(bVar.getUri(), bVar.getError(), bVar.getSampleSize());
    }

    @Override // com.theartofdev.edmodo.cropper.CropImageView.g
    public void m(CropImageView cropImageView, Uri uri, Exception exc) {
        if (exc == null) {
            Rect rect = this.f58832c.initialCropWindowRectangle;
            if (rect != null) {
                this.f58830a.setCropRect(rect);
            }
            int i4 = this.f58832c.initialRotation;
            if (i4 > -1) {
                this.f58830a.setRotatedDegrees(i4);
                return;
            }
            return;
        }
        M(null, exc, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"NewApi"})
    public void onActivityResult(int i4, int i10, Intent intent) {
        if (i4 == 200) {
            if (i10 == 0) {
                N();
            }
            if (i10 == -1) {
                Uri j4 = CropImage.j(this, intent);
                this.f58831b = j4;
                if (CropImage.m(this, j4)) {
                    requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 201);
                } else {
                    this.f58830a.setImageUriAsync(this.f58831b);
                }
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        N();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        CharSequence charSequence;
        super.onCreate(bundle);
        setContentView(g.i.C);
        this.f58830a = (CropImageView) findViewById(g.C0496g.J);
        Bundle bundleExtra = getIntent().getBundleExtra(CropImage.f58821c);
        this.f58831b = (Uri) bundleExtra.getParcelable(CropImage.f58819a);
        this.f58832c = (CropImageOptions) bundleExtra.getParcelable(CropImage.f58820b);
        if (bundle == null) {
            Uri uri = this.f58831b;
            if (uri != null && !uri.equals(Uri.EMPTY)) {
                if (CropImage.m(this, this.f58831b)) {
                    requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 201);
                } else {
                    this.f58830a.setImageUriAsync(this.f58831b);
                }
            } else if (CropImage.l(this)) {
                requestPermissions(new String[]{"android.permission.CAMERA"}, CropImage.f58825g);
            } else {
                CropImage.o(this);
            }
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            CropImageOptions cropImageOptions = this.f58832c;
            supportActionBar.setTitle((cropImageOptions == null || (charSequence = cropImageOptions.activityTitle) == null || charSequence.length() <= 0) ? getResources().getString(g.k.C) : this.f58832c.activityTitle);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(g.j.f59407a, menu);
        CropImageOptions cropImageOptions = this.f58832c;
        if (!cropImageOptions.allowRotation) {
            menu.removeItem(g.C0496g.O);
            menu.removeItem(g.C0496g.P);
        } else if (cropImageOptions.allowCounterRotation) {
            menu.findItem(g.C0496g.O).setVisible(true);
        }
        if (!this.f58832c.allowFlipping) {
            menu.removeItem(g.C0496g.L);
        }
        if (this.f58832c.cropMenuCropButtonTitle != null) {
            menu.findItem(g.C0496g.K).setTitle(this.f58832c.cropMenuCropButtonTitle);
        }
        Drawable drawable = null;
        try {
            int i4 = this.f58832c.cropMenuCropButtonIcon;
            if (i4 != 0) {
                drawable = ContextCompat.getDrawable(this, i4);
                menu.findItem(g.C0496g.K).setIcon(drawable);
            }
        } catch (Exception e4) {
            Log.w("AIC", "Failed to read menu crop drawable", e4);
        }
        int i10 = this.f58832c.activityMenuIconColor;
        if (i10 != 0) {
            O(menu, g.C0496g.O, i10);
            O(menu, g.C0496g.P, this.f58832c.activityMenuIconColor);
            O(menu, g.C0496g.L, this.f58832c.activityMenuIconColor);
            if (drawable != null) {
                O(menu, g.C0496g.K, this.f58832c.activityMenuIconColor);
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == g.C0496g.K) {
            G();
            return true;
        } else if (menuItem.getItemId() == g.C0496g.O) {
            J(-this.f58832c.rotationDegrees);
            return true;
        } else if (menuItem.getItemId() == g.C0496g.P) {
            J(this.f58832c.rotationDegrees);
            return true;
        } else if (menuItem.getItemId() == g.C0496g.M) {
            this.f58830a.h();
            return true;
        } else if (menuItem.getItemId() == g.C0496g.N) {
            this.f58830a.i();
            return true;
        } else if (menuItem.getItemId() == 16908332) {
            N();
            return true;
        } else {
            return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i4, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i4 == 201) {
            Uri uri = this.f58831b;
            if (uri != null && iArr.length > 0 && iArr[0] == 0) {
                this.f58830a.setImageUriAsync(uri);
            } else {
                Toast.makeText(this, g.k.B, 1).show();
                N();
            }
        }
        if (i4 == 2011) {
            CropImage.o(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f58830a.setOnSetImageUriCompleteListener(this);
        this.f58830a.setOnCropImageCompleteListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f58830a.setOnSetImageUriCompleteListener(null);
        this.f58830a.setOnCropImageCompleteListener(null);
    }
}

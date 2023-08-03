package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamLocalUriFetcher.java */
/* loaded from: classes.dex */
public class n extends l<InputStream> {

    /* renamed from: e  reason: collision with root package name */
    private static final int f8585e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f8586f = 2;

    /* renamed from: g  reason: collision with root package name */
    private static final int f8587g = 3;

    /* renamed from: h  reason: collision with root package name */
    private static final int f8588h = 4;

    /* renamed from: i  reason: collision with root package name */
    private static final int f8589i = 5;

    /* renamed from: j  reason: collision with root package name */
    private static final UriMatcher f8590j;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f8590j = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public n(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    private InputStream h(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        int match = f8590j.match(uri);
        if (match != 1) {
            if (match == 3) {
                return i(contentResolver, uri);
            }
            if (match != 5) {
                return contentResolver.openInputStream(uri);
            }
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (lookupContact != null) {
            return i(contentResolver, lookupContact);
        }
        throw new FileNotFoundException("Contact cannot be found");
    }

    private InputStream i(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.data.l
    /* renamed from: f */
    public void c(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.data.l
    /* renamed from: g */
    public InputStream e(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        InputStream h4 = h(uri, contentResolver);
        if (h4 != null) {
            return h4;
        }
        throw new FileNotFoundException("InputStream is null for " + uri);
    }
}

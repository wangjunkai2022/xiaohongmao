package com.im.freechat.data.openapigen.api;

import com.im.freechat.data.openapigen.models.PreSignedUrl200Response;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* compiled from: FileApi.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FileApi;", "", "preSignedUrl", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/PreSignedUrl200Response;", "fileName", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface FileApi {
    @h
    @GET("preSignedUrl")
    Object preSignedUrl(@g @Query("file_name") String str, @g Continuation<? super Response<PreSignedUrl200Response>> continuation);
}

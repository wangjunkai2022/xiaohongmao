package com.im.freechat.data.openapigen.api;

import com.im.freechat.data.openapigen.models.ComplaintRequest;
import com.im.freechat.data.openapigen.models.EditMessageText200Response;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* compiled from: ComplaintApi.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/api/ComplaintApi;", "", "complaint", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "complaintRequest", "Lcom/im/freechat/data/openapigen/models/ComplaintRequest;", "(Lcom/im/freechat/data/openapigen/models/ComplaintRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface ComplaintApi {

    /* compiled from: ComplaintApi.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object complaint$default(ComplaintApi complaintApi, ComplaintRequest complaintRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    complaintRequest = null;
                }
                return complaintApi.complaint(complaintRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: complaint");
        }
    }

    @h
    @POST("complain")
    Object complaint(@h @Body ComplaintRequest complaintRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);
}

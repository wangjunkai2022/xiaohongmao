package com.im.freechat.data.sources.api;

import com.alipay.sdk.packet.d;
import com.im.freechat.data.sources.api.entities.PagedListResponse;
import com.im.freechat.data.sources.api.entities.Response;
import com.im.freechat.data.sources.api.entities.auth.RequestSmsBody;
import com.im.freechat.data.sources.api.entities.auth.SigninBySmsBody;
import com.im.freechat.data.sources.api.entities.auth.UserResponse;
import com.im.freechat.data.sources.api.entities.banner.BannerResponse;
import com.im.freechat.data.sources.api.entities.contact.ContactResponse;
import com.im.freechat.data.sources.api.entities.contact.GetContactListBody;
import com.im.freechat.data.sources.api.entities.contact.RelationOperationBody;
import com.im.freechat.data.sources.api.entities.contact.SearchContactByPhoneBody;
import com.im.freechat.ui.create.choosemember.h;
import com.qennnsad.aknkaksd.data.repository.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import m8.g;
import okhttp3.MultipartBody;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.Query;

/* compiled from: ApiService.kt */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J;\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00042\u000e\b\u0001\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\bH§@ø\u0001\u0000¢\u0006\u0002\u0010\tJ1\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u00032\b\b\u0001\u0010\r\u001a\u00020\u00042\b\b\u0001\u0010\u000e\u001a\u00020\u000fH§@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J1\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u000b0\u00032\b\b\u0001\u0010\r\u001a\u00020\u00042\b\b\u0001\u0010\u0013\u001a\u00020\u0014H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0015JG\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\b\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u0004H§@ø\u0001\u0000¢\u0006\u0002\u0010\u001aJ+\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\r\u001a\u00020\u00042\b\b\u0001\u0010\u001c\u001a\u00020\u001dH§@ø\u0001\u0000¢\u0006\u0002\u0010\u001eJ!\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010 \u001a\u00020!H§@ø\u0001\u0000¢\u0006\u0002\u0010\"J7\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u000b0\u00032\b\b\u0001\u0010\r\u001a\u00020\u00042\u000e\b\u0001\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000f0%H§@ø\u0001\u0000¢\u0006\u0002\u0010&J+\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00120\u00032\b\b\u0001\u0010\r\u001a\u00020\u00042\b\b\u0001\u0010(\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0002\u0010)J1\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120%0\u00032\b\b\u0001\u0010\r\u001a\u00020\u00042\b\b\u0001\u0010+\u001a\u00020,H§@ø\u0001\u0000¢\u0006\u0002\u0010-J!\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u00032\b\b\u0001\u00100\u001a\u000201H§@ø\u0001\u0000¢\u0006\u0002\u00102J7\u00103\u001a\b\u0012\u0004\u0012\u00020\u00120\u00032\b\b\u0001\u0010\r\u001a\u00020\u00042\b\b\u0001\u00104\u001a\u0002052\n\b\u0001\u00106\u001a\u0004\u0018\u00010\u0004H§@ø\u0001\u0000¢\u0006\u0002\u00107\u0082\u0002\u0004\n\u0002\b\u0019¨\u00068"}, d2 = {"Lcom/im/freechat/data/sources/api/ApiService;", "", "devToolToken", "Lcom/im/freechat/data/sources/api/entities/Response;", "", "userId", d.f6907q, h.f43540d, "", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBannerList", "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;", "Lcom/im/freechat/data/sources/api/entities/banner/BannerResponse;", "token", f.f47744a, "", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getContactList", "Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;", "getContactListBody", "Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;", "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/GetContactListBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loginWithExternalToken", "deviceId", "bearer", "device", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "relationOperation", "relationOperationBody", "Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;", "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/RelationOperationBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "requestSMS", "requestSmsBody", "Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;", "(Lcom/im/freechat/data/sources/api/entities/auth/RequestSmsBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "searchContactByIds", "userIds", "", "(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "searchContactByNickname", "nickname", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "searchContactByPhone", "searchContactByPhoneBody", "Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;", "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "signInBySms", "Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;", "signinBySmsBody", "Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;", "(Lcom/im/freechat/data/sources/api/entities/auth/SigninBySmsBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateUserInfo", "file", "Lokhttp3/MultipartBody$Part;", "nick", "(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface ApiService {

    /* compiled from: ApiService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object loginWithExternalToken$default(ApiService apiService, String str, String str2, String str3, String str4, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 8) != 0) {
                    str4 = "android";
                }
                return apiService.loginWithExternalToken(str, str2, str3, str4, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loginWithExternalToken");
        }
    }

    @m8.h
    @GET("/devtool/token")
    Object devToolToken(@g @Query("aud") String str, @g @Query("act") String str2, @g @Query("members[]") String[] strArr, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @GET("/management/banners")
    Object getBannerList(@Header("token") @g String str, @Query("page") int i4, @g Continuation<? super Response<PagedListResponse<BannerResponse>>> continuation);

    @m8.h
    @POST("/relation/followlist")
    Object getContactList(@Header("token") @g String str, @Body @g GetContactListBody getContactListBody, @g Continuation<? super Response<PagedListResponse<ContactResponse>>> continuation);

    @m8.h
    @GET("/im/token")
    Object loginWithExternalToken(@m8.h @Query("unique_name") String str, @m8.h @Query("device_id") String str2, @m8.h @Header("Authorization") String str3, @m8.h @Query("device") String str4, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @POST("/relation/operation")
    Object relationOperation(@Header("token") @g String str, @Body @g RelationOperationBody relationOperationBody, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @POST("/sms/send")
    Object requestSMS(@Body @g RequestSmsBody requestSmsBody, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @GET("/accessuser/searchbyuniquename")
    Object searchContactByIds(@Header("token") @g String str, @g @Query("unique_names[]") List<Integer> list, @g Continuation<? super Response<PagedListResponse<ContactResponse>>> continuation);

    @m8.h
    @GET("/accessuser/searchbynickname")
    Object searchContactByNickname(@Header("token") @g String str, @g @Query("nickname") String str2, @g Continuation<? super Response<ContactResponse>> continuation);

    @m8.h
    @POST("/relation/contactlist")
    Object searchContactByPhone(@Header("token") @g String str, @Body @g SearchContactByPhoneBody searchContactByPhoneBody, @g Continuation<? super Response<List<ContactResponse>>> continuation);

    @m8.h
    @POST("/accessuser/signinbysms")
    Object signInBySms(@Body @g SigninBySmsBody signinBySmsBody, @g Continuation<? super Response<UserResponse>> continuation);

    @m8.h
    @PUT("/accessuser/updateuserinfo")
    @Multipart
    Object updateUserInfo(@Header("token") @g String str, @g @Part MultipartBody.Part part, @m8.h @Query("nickname") String str2, @g Continuation<? super Response<ContactResponse>> continuation);
}

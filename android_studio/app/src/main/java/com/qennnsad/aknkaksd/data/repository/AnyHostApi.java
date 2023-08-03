package com.qennnsad.aknkaksd.data.repository;

import io.reactivex.z;
import kotlin.Metadata;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* compiled from: AnyHostApi.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J \u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u00042\n\b\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0002H'J(\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'J(\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'J6\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0002H'J*\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0002H'J(\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u000fH'J*\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0002H'¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/AnyHostApi;", "", "", "apiHost", "Lio/reactivex/z;", "Lretrofit2/Response;", "getHitList", "id", "setHit", "removeHit", "oldPassword", "newPassword", "modifyPassword", "intro", "updateIntro", "", "subscribe_notify", "updateSubscribeNotify", "roomId", "generatePushStreaming", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface AnyHostApi {

    /* compiled from: AnyHostApi.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a {
        public static /* synthetic */ z a(AnyHostApi anyHostApi, String str, String str2, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = com.qennnsad.aknkaksd.data.repository.a.f47697a;
                }
                return anyHostApi.generatePushStreaming(str, str2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: generatePushStreaming");
        }

        public static /* synthetic */ z b(AnyHostApi anyHostApi, String str, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = com.qennnsad.aknkaksd.data.repository.a.f47697a;
                }
                return anyHostApi.getHitList(str);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getHitList");
        }

        public static /* synthetic */ z c(AnyHostApi anyHostApi, String str, String str2, String str3, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = com.qennnsad.aknkaksd.data.repository.a.f47697a;
                }
                return anyHostApi.modifyPassword(str, str2, str3);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modifyPassword");
        }

        public static /* synthetic */ z d(AnyHostApi anyHostApi, String str, String str2, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = com.qennnsad.aknkaksd.data.repository.a.f47697a;
                }
                return anyHostApi.removeHit(str, str2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: removeHit");
        }

        public static /* synthetic */ z e(AnyHostApi anyHostApi, String str, String str2, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = com.qennnsad.aknkaksd.data.repository.a.f47697a;
                }
                return anyHostApi.setHit(str, str2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setHit");
        }

        public static /* synthetic */ z f(AnyHostApi anyHostApi, String str, String str2, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = com.qennnsad.aknkaksd.data.repository.a.f47697a;
                }
                return anyHostApi.updateIntro(str, str2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateIntro");
        }

        public static /* synthetic */ z g(AnyHostApi anyHostApi, String str, int i4, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    str = com.qennnsad.aknkaksd.data.repository.a.f47697a;
                }
                return anyHostApi.updateSubscribeNotify(str, i4);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateSubscribeNotify");
        }
    }

    @m8.g
    @GET("{apiHost}/OpenAPI/v1/CDN/getPushAddress")
    z<Response<String>> generatePushStreaming(@Path(encoded = true, value = "apiHost") @m8.g String str, @m8.h @Query("roomID") String str2);

    @m8.g
    @GET("{apiHost}/OpenAPI/v1/user/getHitlist")
    z<Response<String>> getHitList(@Path(encoded = true, value = "apiHost") @m8.h String str);

    @m8.g
    @POST("{apiHost}/OpenAPI/v1/user/updatePassword")
    z<Response<String>> modifyPassword(@Path(encoded = true, value = "apiHost") @m8.g String str, @m8.h @Query("old_password") String str2, @m8.h @Query("new_password") String str3);

    @m8.g
    @GET("{apiHost}/OpenAPI/v1/user/removeHit")
    z<Response<String>> removeHit(@Path(encoded = true, value = "apiHost") @m8.g String str, @m8.g @Query("hituid") String str2);

    @m8.g
    @GET("{apiHost}/OpenAPI/v1/user/setHit")
    z<Response<String>> setHit(@Path(encoded = true, value = "apiHost") @m8.g String str, @m8.g @Query("hituid") String str2);

    @m8.g
    @POST("{apiHost}/OpenAPI/v1/user/updateIntro")
    z<Response<String>> updateIntro(@Path(encoded = true, value = "apiHost") @m8.g String str, @m8.h @Query("intro") String str2);

    @m8.g
    @POST("{apiHost}/OpenAPI/v1/user/updateSubscribeNotify")
    z<Response<String>> updateSubscribeNotify(@Path(encoded = true, value = "apiHost") @m8.g String str, @Query("subscribe_notify") int i4);
}

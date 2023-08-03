.class public interface abstract Lcom/qennnsad/aknkaksd/data/repository/RetrofitApi;
.super Ljava/lang/Object;
.source "RetrofitApi.java"


# static fields
.field public static final a:Ljava/lang/String; = "api"

.field public static final b:Ljava/lang/String; = "v1/"

.field public static final c:Ljava/lang/String; = "v2/"

.field public static final d:Ljava/lang/String; = "https://raw.githubusercontent.com/"

.field public static final e:Ljava/lang/String; = "github"


# virtual methods
.method public abstract alipay(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "money"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/payment/zhiFuBaoOfTongLe"
    .end annotation
.end method

.method public abstract anchorRankLastWeek(ILjava/lang/Integer;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page_index"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "lob"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/anchorRankLastWeek"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract anchorRankThisWeek(ILjava/lang/Integer;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page_index"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "lob"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/anchorRankThisWeek"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract anchorRankToday(ILjava/lang/Integer;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page_index"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "lob"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/anchorRankToday"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract anchorRankYesterday(ILjava/lang/Integer;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page_index"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "lob"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/anchorRankYesterday"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract bigWinSendMessage(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "win_money"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/gift/gameWinFly"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract boxReport(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "drawer_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/box/report"
    .end annotation
.end method

.method public abstract boxReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "drawer_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "live_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "pull_url"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/box/report"
    .end annotation
.end method

.method public abstract chat(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to_uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "content"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/message/sendMsg"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract checkUserPoint(ILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/private/checkUserPoint"
    .end annotation
.end method

.method public abstract checkVideoMoney(ILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/private/checkVideoMoney"
    .end annotation
.end method

.method public abstract checkVideoPoint(ILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/private/checkVideoPoint"
    .end annotation
.end method

.method public abstract complainPinnedMessage(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/pinmessage/complaint"
    .end annotation
.end method

.method public abstract createConferenceRoom(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/Qiniu/createRoom"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract createRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;IIIILjava/lang/Integer;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "address"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "province"
        .end annotation
    .end param
    .param p5    # C
        .annotation runtime Lretrofit2/http/Query;
            value = "orientation"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "prerequisite"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "ptid"
        .end annotation
    .end param
    .param p8    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gameType"
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "capture"
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "is_admin_send_namecard"
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "name_card_cost"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/room/createRoom"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract deletConferenceRoom(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/Qiniu/deleteRoom"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract downloadFile(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract editJob(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "professional"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/setProfessional"
    .end annotation
.end method

.method public abstract editProfile(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "profile"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/edit"
    .end annotation
.end method

.method public abstract findmypassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "country_code"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "password"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "verify"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "algo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/findmypassword"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract followAnchor(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/follow"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract followUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/follow"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract gameRank(Ljava/lang/String;II)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "period"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/game_rank"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract generatePushStreaming(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/CDN/getPushAddress"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract generateRechargeOrder(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/payment/aliPay"
    .end annotation
.end method

.method public abstract generateRechargeWechat(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "num"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/payment/appWeixin"
    .end annotation
.end method

.method public abstract getALiInfo()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/order/getWithdrawInfoByAlipay"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getAPI_GIT()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/sskldjfoe0244/khuoijkl/master/.gitignore/local"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: github"
        }
    .end annotation
.end method

.method public abstract getAdConfig()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/config/getLeafletConfig"
    .end annotation
.end method

.method public abstract getAdmin(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/room/getAdmin"
    .end annotation
.end method

.method public abstract getAnchoBean(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/getAnchorBean"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getAnchorHot(II)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/hot"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getAnchorSlide(II)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/slide"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getAppConfig()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/config/getappconfig"
    .end annotation
.end method

.method public abstract getAvailableGifts(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "ver"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/gift/collection"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getBankInfo()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/order/getWithdrawInfoByBank"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getBoxDrawers(II)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/box/drawers"
    .end annotation
.end method

.method public abstract getBoxLives(IILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/box/lives"
    .end annotation
.end method

.method public abstract getCompetitorsList()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/Interaction/list"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getContributeRankList(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/contributeList"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getCurrentAgentChat()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/topup/dialog"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getCurrentRoomGameType(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/APIgame/getGameType"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getDepositAgent()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/topup/agent"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getDepositOptions()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/topup/options"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getEmotion(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "emotion"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/updateEmotion"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getFanClubInfo()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/fanClub/fanInfo"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getFriendList()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/friend/getfriend"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getGameCenterPoints()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/points/get_points_count"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getGameCenterUrl()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/points/get_url"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getGameGift()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/APIgame/giveGift"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getGameHall(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "gameid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/legend/getGameHall"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getHelpUrl()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/contact_link"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getImToken()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/im/login"
    .end annotation
.end method

.method public abstract getIncomeBean()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/income"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getLaunchAd(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "app_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{apiHost}config/launchAd"
    .end annotation
.end method

.method public abstract getLiteVersion()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/config/getliteversion"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getLiveRoomInfo(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomnum"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/room/entryOfflineroom"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getLoginCaptcha()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/get_login_captcha"
    .end annotation
.end method

.method public abstract getMyInfo()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/personal"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getNearbyList(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sex"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/nearby"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPayWAY()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/order/getWithdrawChannels"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPeeragePrices()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/peerage/items"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPinnedMessagesHistory(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/pinmessage/history"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPlayBack(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/room/getRoomBack"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPlayBackListUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "startTime"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "endTime"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/Qiniu/getPlayback"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPlaybackUrl(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/qiniu/getPullAddress"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPresentRecord()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/cashhistory"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPullAddress(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/CDN/getPullAddress"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getPusherVersion()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/config/getpusherversion"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getRechargeInfo(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/getchargeoption"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getRoomToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomName"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "perm"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lretrofit2/http/Query;
            value = "expireAt"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/Qiniu/roomToken"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getSeatRank(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "room_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/room/seatRank"
    .end annotation
.end method

.method public abstract getShareData(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/getconfig"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getSignInStar(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/APIgame/sign_reward"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getSignInfoFromServer(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/APIgame/sign"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getStarAndLeftTimes(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "nickname"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/APIgame/getCoin"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getStarProgressTime(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/APIgame/getCoinTime"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getThemBean()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/topic/getTopic"
    .end annotation
.end method

.method public abstract getThemBean(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/topic/getTopic"
    .end annotation
.end method

.method public abstract getUserFans(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/followers"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getUserInfo(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/profile"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getUserMoney()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/money"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract getUserStars(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/followees"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract guestLink(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/guest/register"
    .end annotation
.end method

.method public abstract guestLogin()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/guest/login"
    .end annotation
.end method

.method public abstract hitList()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/getHitlist"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract interruptDeposit(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "agent_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/topup/interrupt"
    .end annotation
.end method

.method public abstract is_create_conversation(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/imsg/is_create_conversation"
    .end annotation
.end method

.method public abstract isaddfriend(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/imsg/is_add_friend"
    .end annotation
.end method

.method public abstract joinFanClub(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/fanClub/participate"
    .end annotation
.end method

.method public abstract loadBoxAnchors(II)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/box"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadCityAnchors(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "city"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/city"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadFollowedLives(II)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "isPk"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/onlineFriends"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadHotAnchors(IILjava/lang/String;I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "isPk"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/hot"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadLatestAnchors(IILjava/lang/String;I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "isPk"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/latest"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadNerabyAnchors(IILjava/lang/String;I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "isPk"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/nearby"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadPrivateLevel(ILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/private/checkPrivateLevel"
    .end annotation
.end method

.method public abstract loadPrivateLimit(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/private/getPrivateLimit"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadPrivateMoney(ILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/private/checkUserMoney"
    .end annotation
.end method

.method public abstract loadPrivatePwd(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "prerequisite"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/private/checkPrivatePass"
    .end annotation
.end method

.method public abstract loadPrivateTicket(ILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/private/checkPrivateCharge"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadRecommendAnchors(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "isPk"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/recommend"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadSponsorAnchors(II)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/lounge"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadTopicLives(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "topicId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/topic/getTopicUser"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadVeganAnchors(IILjava/lang/String;I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "isPk"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/vegan"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract loadVipAnchors(IILjava/lang/String;I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "size"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "order"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "isPk"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/vip"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/login"
    .end annotation
.end method

.method public abstract logout()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/logout"
    .end annotation
.end method

.method public abstract modifyPassword(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "old_password"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "new_password"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/updatePassword"
    .end annotation
.end method

.method public abstract onRoomOrientationChange(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orientation"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/room/onRoomOrientationChange"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract pinMessage(IIILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "aid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "roomid"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "content"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/pinmessage/send"
    .end annotation
.end method

.method public abstract ping(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{apiHost}index/ping"
    .end annotation
.end method

.method public abstract pkRank(JJI)Lio/reactivex/z;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "timeStart"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "timeEnd"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/interaction/rating"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract postInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "cash"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "checkname"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "phone"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/order/belowline"
    .end annotation
.end method

.method public abstract postInfo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "cash"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "channelid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "checkname"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "wechat"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "qq"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/order/belowline"
    .end annotation
.end method

.method public abstract postbank(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "cash"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "acctname"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "acctno"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bankaddr"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "wechat"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "qq"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/order/withdrawByBank"
    .end annotation
.end method

.method public abstract previewPrivateRoom(ILjava/lang/String;)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "aid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/private/previewPrivateRoom"
    .end annotation
.end method

.method public abstract publishRecoveryPrivate(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "plid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/private/privateRecovery"
    .end annotation
.end method

.method public abstract queryAnchors(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "query"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/anchor/search"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract registerByPhone_tiger(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Content-Puzzle"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/register"
    .end annotation
.end method

.method public abstract removeAdmin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "adminuid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/room/delAdmin"
    .end annotation
.end method

.method public abstract removeHit(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "hituid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/removeHit"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract reportLocation(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "lat"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "lng"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/location"
    .end annotation
.end method

.method public abstract requestError()Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/error/login22"
    .end annotation
.end method

.method public abstract roomWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "anchor_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "room_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "duration"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "note"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/room/warn"
    .end annotation
.end method

.method public abstract sendConferenceMsg(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "msg"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/Qiniu/sendMessage"
    .end annotation
.end method

.method public abstract sendDanmuMsg(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "content"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/gift/sendBarrage"
    .end annotation
.end method

.method public abstract sendGift(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to_uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gift_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/gift/send"
    .end annotation
.end method

.method public abstract sendHongBaoGift(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to_uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gift_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/gift/sendredgift"
    .end annotation
.end method

.method public abstract sendInteractionReady(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "is_ready"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/interactionReady"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract sendNameCard(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to_uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "room_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/room/sendNameCard"
    .end annotation
.end method

.method public abstract sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "country_code"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "recaptcha"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "hCaptcha"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "captcha"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "captcha_id"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "algo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/SMS/sendSMS"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract setBirthday(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "birthday"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/setBirthday"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract setCity(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "city"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/updateCity"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract setCurrentGame(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "game_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/gift/changeGame"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract setHit(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "hituid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/setHit"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract setLiveStatus(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/anchor/live"
    .end annotation
.end method

.method public abstract thirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "openid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "payload"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/auth/login"
    .end annotation
.end method

.method public abstract translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "apiHost"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "from"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "text"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "to"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{apiHost}/la/translate"
    .end annotation
.end method

.method public abstract unfollowAnchor(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/unfollow"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract unfollowUser(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/unfollow"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract upLoadLog(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "msg"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/Logger/sos"
    .end annotation
.end method

.method public abstract upLoadMyAddress(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "roomID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/qiniu/getPullAddress"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract upLoadMyRecommen(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/setRecommenUser"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract upNewAppVersion(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "system"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/config/getAppVersion"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract updateBirthday(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "birthday"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/updateBirthday"
    .end annotation
.end method

.method public abstract updateIntro(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "intro"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/updateIntro"
    .end annotation
.end method

.method public abstract updateNameCard(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "content"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/updateNameCard"
    .end annotation
.end method

.method public abstract updateNickName(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "nickname"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/updateNickName"
    .end annotation
.end method

.method public abstract updateSex(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sex"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/updateSex"
    .end annotation
.end method

.method public abstract updateSubscribeNotify(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "subscribe_notify"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/updateSubscribeNotify"
    .end annotation
.end method

.method public abstract updateToyStatus(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "model"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "status"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/Room/updateToyStatus"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract updateUserSetup(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "action"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/user/user_setup"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract uploadAvatar(Lokhttp3/MultipartBody$Part;)Lio/reactivex/z;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/uploadAvatar"
    .end annotation
.end method

.method public abstract uploadRoompic(Lokhttp3/MultipartBody$Part;)Lio/reactivex/z;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/uploadRoompic"
    .end annotation
.end method

.method public abstract userReport(Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/room/report"
    .end annotation
.end method

.method public abstract userReport(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "evidence"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/room/report"
    .end annotation
.end method

.method public abstract viewerRankLastWeek(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page_index"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/viewerRankLastWeek"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract viewerRankThisWeek(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page_index"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/viewerRankThisWeek"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract viewerRankToday(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page_index"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/viewerRankToday"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract viewerRankYesterday(I)Lio/reactivex/z;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "page_index"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/rank/viewerRankYesterday"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation
.end method

.method public abstract weChatPay(Ljava/lang/String;I)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "uid"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "money"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/payment/weiXinImageOfTongLe"
    .end annotation
.end method

.method public abstract withDraw(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "num"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "account"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Domain-Name: api"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/user/incometocash"
    .end annotation
.end method

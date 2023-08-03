.class public interface abstract Lcom/im/freechat/data/openapigen/api/ComplaintApi;
.super Ljava/lang/Object;
.source "ComplaintApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/api/ComplaintApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/api/ComplaintApi;",
        "",
        "complaint",
        "Lretrofit2/Response;",
        "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
        "complaintRequest",
        "Lcom/im/freechat/data/openapigen/models/ComplaintRequest;",
        "(Lcom/im/freechat/data/openapigen/models/ComplaintRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract complaint(Lcom/im/freechat/data/openapigen/models/ComplaintRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/im/freechat/data/openapigen/models/ComplaintRequest;
        .annotation build Lm8/h;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/openapigen/models/ComplaintRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "complain"
    .end annotation
.end method

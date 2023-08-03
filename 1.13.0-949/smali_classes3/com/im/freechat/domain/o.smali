.class public interface abstract Lcom/im/freechat/domain/o;
.super Ljava/lang/Object;
.source "PhoneUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0008\u0010\u0006\u001a\u00020\u0005H&R \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u00078&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/domain/o;",
        "",
        "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
        "phoneNumber",
        "a",
        "",
        "b",
        "",
        "Lcom/im/freechat/shared/entities/auth/Country;",
        "c",
        "()Ljava/util/Map;",
        "codes",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/im/freechat/shared/entities/auth/PhoneNumber;)Lcom/im/freechat/shared/entities/auth/PhoneNumber;
    .param p1    # Lcom/im/freechat/shared/entities/auth/PhoneNumber;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/im/freechat/shared/entities/auth/Country;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

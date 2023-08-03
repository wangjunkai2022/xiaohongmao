.class public final Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;
.super Ljava/lang/Object;
.source "SearchContactByPhoneBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0008\u0001\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005R\u0019\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;",
        "",
        "phones",
        "",
        "",
        "([Ljava/lang/String;)V",
        "getPhones",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
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


# instance fields
.field private final phones:[Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "phones"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "phones"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;->phones:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPhones()[Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/contact/SearchContactByPhoneBody;->phones:[Ljava/lang/String;

    return-object v0
.end method

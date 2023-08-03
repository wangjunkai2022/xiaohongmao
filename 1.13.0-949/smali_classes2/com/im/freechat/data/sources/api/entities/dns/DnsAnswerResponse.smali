.class public final Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;
.super Ljava/lang/Object;
.source "DnsAnswerResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;",
        "",
        "name",
        "",
        "type",
        "",
        "data",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getData",
        "()Ljava/lang/String;",
        "getName",
        "getType",
        "()I",
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
.field private final data:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "name"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "data"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;->name:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;->type:I

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;->type:I

    return v0
.end method

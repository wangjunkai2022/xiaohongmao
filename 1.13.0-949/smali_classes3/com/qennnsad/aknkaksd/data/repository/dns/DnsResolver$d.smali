.class final Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$d;
.super Lkotlin/jvm/internal/Lambda;
.source "DnsResolver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(Z)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$d;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$d;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->h(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$d;->a(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

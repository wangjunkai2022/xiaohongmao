.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/dns/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/c;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/c;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->f(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;)Lio/reactivex/e0;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/dns/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/a;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/a;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/dns/a;->b:Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->d(Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

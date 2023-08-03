.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/dns/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# static fields
.field public static final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/dns/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/e;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/e;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/e;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->a(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

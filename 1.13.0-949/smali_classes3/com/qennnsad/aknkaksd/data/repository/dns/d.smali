.class public final synthetic Lcom/qennnsad/aknkaksd/data/repository/dns/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# static fields
.field public static final synthetic a:Lcom/qennnsad/aknkaksd/data/repository/dns/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/d;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/repository/dns/d;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/data/repository/dns/d;->a:Lcom/qennnsad/aknkaksd/data/repository/dns/d;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;->c(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

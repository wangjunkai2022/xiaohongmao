.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# static fields
.field public static final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/e;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/e;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/e;->a:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/e;

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

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetPointsBean;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;->c(Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetPointsBean;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

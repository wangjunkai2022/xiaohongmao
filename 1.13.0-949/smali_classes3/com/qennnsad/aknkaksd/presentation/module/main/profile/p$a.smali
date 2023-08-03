.class final Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p$a;
.super Ljava/lang/Object;
.source "UserProfileViewModel_HiltModules_KeyModule_ProvideFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p;

    return-object v0
.end method

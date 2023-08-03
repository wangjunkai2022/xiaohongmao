.class public final synthetic Landroidx/core/splashscreen/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;


# static fields
.field public static final synthetic a:Landroidx/core/splashscreen/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/splashscreen/a;

    invoke-direct {v0}, Landroidx/core/splashscreen/a;-><init>()V

    sput-object v0, Landroidx/core/splashscreen/a;->a:Landroidx/core/splashscreen/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldKeepOnScreen()Z
    .locals 1

    invoke-static {}, Landroidx/core/splashscreen/SplashScreen$Impl;->b()Z

    move-result v0

    return v0
.end method

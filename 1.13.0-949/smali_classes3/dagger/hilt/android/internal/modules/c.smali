.class public final Ldagger/hilt/android/internal/modules/c;
.super Ljava/lang/Object;
.source "ApplicationContextModule.java"


# annotations
.annotation runtime Ld6/h;
.end annotation

.annotation build Ldagger/hilt/e;
    value = {
        Lp6/a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldagger/hilt/android/internal/modules/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a()Landroid/app/Application;
    .locals 1
    .annotation runtime Ld6/i;
    .end annotation

    iget-object v0, p0, Ldagger/hilt/android/internal/modules/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lg6/a;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/content/Context;
    .locals 1
    .annotation runtime Ld6/i;
    .end annotation

    .annotation build Lm6/b;
    .end annotation

    iget-object v0, p0, Ldagger/hilt/android/internal/modules/c;->a:Landroid/content/Context;

    return-object v0
.end method

.class public final Lg5/e;
.super Ljava/lang/Object;
.source "LocalIDManager_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lg5/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg5/e;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lg5/e;->b:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;)Lg5/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;",
            ">;)",
            "Lg5/e;"
        }
    .end annotation

    new-instance v0, Lg5/e;

    invoke-direct {v0, p0, p1}, Lg5/e;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;)Lg5/d;
    .locals 1

    new-instance v0, Lg5/d;

    invoke-direct {v0, p0, p1}, Lg5/d;-><init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg5/d;
    .locals 2

    iget-object v0, p0, Lg5/e;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    iget-object v1, p0, Lg5/e;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;

    invoke-static {v0, v1}, Lg5/e;->c(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;)Lg5/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg5/e;->b()Lg5/d;

    move-result-object v0

    return-object v0
.end method

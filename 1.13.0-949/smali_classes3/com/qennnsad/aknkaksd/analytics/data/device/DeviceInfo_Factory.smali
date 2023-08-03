.class public final Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;
.super Ljava/lang/Object;
.source "DeviceInfo_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
    value = {
        "dagger.hilt.android.qualifiers.ApplicationContext"
    }
.end annotation

.annotation build Ldagger/internal/s;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;->contextProvider:Lu7/c;

    return-void
.end method

.method public static create(Lu7/c;)Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;->contextProvider:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;->newInstance(Landroid/content/Context;)Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo_Factory;->get()Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lg0/a;
.super Ljava/lang/Object;
.source "BleBaseCallback.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lg0/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg0/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lg0/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg0/a;->a:Ljava/lang/String;

    return-void
.end method

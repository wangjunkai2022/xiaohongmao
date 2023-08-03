.class public Lcom/tao/admin/loglib/TLogApplication;
.super Landroid/app/Application;
.source "TLogApplication.java"


# static fields
.field private static mContenx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAPP()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tao/admin/loglib/TLogApplication;->mContenx:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/tao/admin/loglib/TLogApplication;->mContenx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/tao/admin/loglib/TLogApplication;->mContenx:Landroid/content/Context;

    return-void
.end method

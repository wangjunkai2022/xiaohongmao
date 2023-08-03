.class public Lcom/ksy/statlibrary/log/LogParams;
.super Ljava/lang/Object;
.source "LogParams.java"


# instance fields
.field accesskey:Ljava/lang/String;

.field header:Lorg/json/JSONObject;

.field secretkey:Ljava/lang/String;

.field uniquename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ksy/statlibrary/log/LogParams;->header:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/ksy/statlibrary/log/LogParams;->secretkey:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/ksy/statlibrary/log/LogParams;->uniquename:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/ksy/statlibrary/log/LogParams;->accesskey:Ljava/lang/String;

    return-void
.end method

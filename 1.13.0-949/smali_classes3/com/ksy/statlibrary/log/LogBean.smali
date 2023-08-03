.class public Lcom/ksy/statlibrary/log/LogBean;
.super Ljava/lang/Object;
.source "LogBean.java"


# instance fields
.field private final mLogContent:Ljava/lang/String;

.field private final mLogId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksy/statlibrary/log/LogBean;->mLogId:I

    .line 3
    iput-object p2, p0, Lcom/ksy/statlibrary/log/LogBean;->mLogContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksy/statlibrary/log/LogBean;->mLogContent:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/ksy/statlibrary/log/LogBean;->mLogId:I

    return v0
.end method

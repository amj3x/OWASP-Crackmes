.class Lsg/vantagepoint/uncrackable3/MainActivity$2;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/vantagepoint/uncrackable3/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsg/vantagepoint/uncrackable3/MainActivity;


# direct methods
.method constructor <init>(Lsg/vantagepoint/uncrackable3/MainActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lsg/vantagepoint/uncrackable3/MainActivity$2;->this$0:Lsg/vantagepoint/uncrackable3/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsg/vantagepoint/uncrackable3/MainActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 113
    :goto_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x64

    .line 114
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsg/vantagepoint/uncrackable3/MainActivity$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lsg/vantagepoint/uncrackable3/MainActivity$2;->this$0:Lsg/vantagepoint/uncrackable3/MainActivity;

    const-string v0, "Debugger detected!"

    invoke-static {p1, v0}, Lsg/vantagepoint/uncrackable3/MainActivity;->access$000(Lsg/vantagepoint/uncrackable3/MainActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 122
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

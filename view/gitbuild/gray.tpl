    <style>
    {include file='static/css/bootstrap.css'}
    </style>
    <div class='container'>

      <div class="blog-header">
        <h3 class="blog-title text-success">{$data.subject}</h1>
        <p class="lead blog-description"></p>
      </div>

      <div class="row">

        {if $data.build_description}
        <div class="col-sm-12 blog-main">
          <div class="blog-post">
            <h4 class="blog-post-title">构建信息</h4>
            <p>{$data.build_description}</p>
          </div><!-- /.blog-post -->

        </div><!-- /.blog-main -->
        {/if}

        <div class="col-sm-12 blog-main">
            <h4 class="blog-post-title">Git提交记录</h4>
              <!-- Table -->
                <table class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>Revision</th>
                      <th>Message</th>
                      <th>Author</th>
                      <th>File</th>
                      <th>Time</th>
                    </tr>
                  </thead>
                  <tbody>
                    {foreach from=$data.vcs item=vo}
                    <tr>
                      <td>{$vo['commit']|substr:0:8}</td>
                      <td>
                      {foreach from=$vo.message item=voo}
                          {$voo}<br />
                      {/foreach}
                      </td>
                      <td>{$vo['author']}</td>
                      <td class='break-all'>
                      {if isset($vo['diff'])}
                      {foreach from=$vo.diff item=voo}
                          {$voo}<br />
                      {/foreach}
                      {else}
                          {$vo['merge']}<br />
                          {foreach from=$vo.merge_diff item=voo}
                              {$voo}<br />
                          {/foreach}
                      {/if}
                      </td>
                      <td>{$vo['date']|date_format:"%Y-%m-%d %H:%M:%S"}</td>
                    </tr>
                    {/foreach}
                  </tbody>
                </table>
        </div><!-- /.blog-main -->

        <div class="col-sm-12 blog-main">
          <div class="blog-post">
            <h4 class="blog-post-title">版本介绍</h4>
            <p>{$data.product_description}</p>
          </div><!-- /.blog-post -->
        </div><!-- /.blog-main -->

        <div class="col-sm-12 blog-main">
            <h4 class="blog-post-title">内网集成测试环境</h4>
            {$data.test}
        </div><!-- /.blog-main -->

        <div class="col-sm-12 blog-main">
            <h4 class="blog-post-title">产品信息</h4>
              <!-- Table -->
                <table class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>Item</th>
                      <th>Value</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Project</td>
                      <td>{$data.product.name}</td>
                    </tr>
                    <tr>
                      <td>Programmers</td>
                      <td>{$data.product.dev_team}</td>
                    </tr>
                    <tr>
                      <td>Project Managers</td>
                      <td>{$data.product.pm_team}</td>
                    </tr>
                    <tr>
                      <td>Testers</td>
                      <td>{$data.product.test_team}</td>
                    </tr>
                    <tr>
                      <td>Stake Holers</td>
                      <td>{$data.product.stake_holder}</td>
                    </tr>
                    <tr>
                      <td>VCS URL</td>
                      <td>{$data.product.vcs_url}</td>
                    </tr>
                  </tbody>
                </table>
        </div><!-- /.blog-main -->

      </div><!-- /.row -->

    </div><!-- /.container -->

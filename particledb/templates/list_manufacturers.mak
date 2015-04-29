<%inherit file="base.mak" />

<%namespace file="functions/pagination.mak" import="paginate" />

<h1 class="page-header">List of registered manufacturers</h1>

<div class="table-responsive">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>#</th>
                <th>Manufacturer name</th>
                <th>Logo</th>
            </tr>
        </thead>
        <tbody>
            % for manufacturer in pagination.current_dataset:
            <tr>
                <td>${manufacturer.id}</td>
                <td>${manufacturer.name}</td>
                <td>${manufacturer.logofile}</td>
            </tr>
            % endfor
        </tbody>
    </table>
</div>

${paginate(pagination)}